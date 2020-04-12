import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  var initialToken: String?
  private var eventChannel: FlutterEventChannel?
  private let tokenStreamHandler = TokenStreamHandler()

  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {

    /* channel controller code */
    let controller: FlutterViewController = self.window?.rootViewController as! FlutterViewController
    let methodChannel = FlutterMethodChannel(name: "consent.x0a.io/method", binaryMessenger: controller.binaryMessenger)

    methodChannel.setMethodCallHandler({(call: FlutterMethodCall, result: @escaping FlutterResult)-> Void in
        if(call.method == "getInitialReceipt"){
            if(self.initialToken != nil){
                result(self.initialToken);
                self.initialToken = nil;
            } else{
                print("initialToken is null");
                result(nil);
            }
        } else{
            print("no such channel method");
        }
    });

    eventChannel = FlutterEventChannel(name: "consent.x0a.io/events", binaryMessenger: controller.binaryMessenger)

    GeneratedPluginRegistrant.register(with: self)
    eventChannel?.setStreamHandler(tokenStreamHandler)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }

  override func application(
    _ app: UIApplication,
    open url: URL,
    options: [UIApplication.OpenURLOptionsKey : Any] = [:]
  ) -> Bool {
      do {
        let token = try String(contentsOf: url)
        initialToken = token
        eventChannel?.setStreamHandler(tokenStreamHandler)
        tokenStreamHandler.handleToken(token)
      } catch let error {
        print(error.localizedDescription)
      }

      return true;
    }
}

class TokenStreamHandler:NSObject, FlutterStreamHandler {
  
  var eventSink: FlutterEventSink?
  
  // links will be added to this queue until the sink is ready to process them
  var queuedTokens = [String]()
  
  func onListen(withArguments arguments: Any?, eventSink events: @escaping FlutterEventSink) -> FlutterError? {
    self.eventSink = events
    queuedTokens.forEach({ events($0) })
    queuedTokens.removeAll()
    return nil
  }
  
  func onCancel(withArguments arguments: Any?) -> FlutterError? {
    self.eventSink = nil
    return nil
  }
  
  func handleToken(_ token: String) -> Bool {
    guard let eventSink = eventSink else {
      queuedTokens.append(token)
      return false
    }
    eventSink(token)
    return true
  }
}
