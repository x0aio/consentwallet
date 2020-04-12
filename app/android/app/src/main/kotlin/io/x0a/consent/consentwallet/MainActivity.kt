package io.x0a.consent.consentwallet

import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.os.Bundle
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.EventChannel.EventSink
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel

class MainActivity: FlutterActivity() {

    companion object {
        val METHOD_CHANNEL = "consent.x0a.io/method"
        val EVENTS_CHANNEL = "consent.x0a.io/events"

        private fun parseToken(context: Context, intent: Intent) : String {
            context.contentResolver.openInputStream(intent.data).bufferedReader().use {
                return it.readText()
            }
        }
    }

    private var initialReceipt: String? = null
    private var intentsReceiver: BroadcastReceiver? = null

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, METHOD_CHANNEL)
                .setMethodCallHandler(::onMethodCall)

        EventChannel(flutterEngine.dartExecutor.binaryMessenger, EVENTS_CHANNEL).setStreamHandler(
            object : EventChannel.StreamHandler {
                override fun onListen(args: Any?, events: EventSink) {
                    intentsReceiver = createChangeReceiver(events)
                }

                override fun onCancel(args: Any?) {
                    intentsReceiver = null
                }
            }
        )
    }

    private fun onMethodCall(call: MethodCall, result: MethodChannel.Result) {
        if (call.method!!.contentEquals("getInitialReceipt")) {
            result.success(initialReceipt)
        }
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        if (intent.action == Intent.ACTION_VIEW && intent.data != null) {
            initialReceipt = parseToken(context, intent)
        }
    }

    override fun onNewIntent(intent: Intent) {
        super.onNewIntent(intent)

        if (intent.action === Intent.ACTION_VIEW) {
            intentsReceiver?.onReceive(this.applicationContext, intent)
        }
    }

    private fun createChangeReceiver(events: EventSink): BroadcastReceiver? {
        return object : BroadcastReceiver() {
            override fun onReceive(context: Context, intent: Intent) {
                if (intent.data == null) {
                    events.error("UNAVAILABLE", "Link unavailable", null)
                } else {
                    events.success(parseToken(context, intent))
                }
            }
        }
    }
}
