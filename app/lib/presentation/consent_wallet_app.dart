import 'package:content_wallet/presentation/home/home_page.dart';
import 'package:content_wallet/presentation/shared/first_time_page.dart';
import 'package:content_wallet/presentation/view/view_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:content_wallet/generated/i18n.dart';
import 'package:content_wallet/presentation/themes.dart';
import 'package:receiptviewer/generated/i18n.dart' as viewer;

class ConsentWalletApp extends StatefulWidget {

    static const viewPrefix = "view_";

    final String initialToken;
    final String version;
    final bool isFirstTime;

    const ConsentWalletApp({
        @required this.initialToken,
        @required this.version,
        @required this.isFirstTime
    });

    @override
    _ConsentWalletAppState createState() => _ConsentWalletAppState(firstTime: isFirstTime);
}

class _ConsentWalletAppState extends State<ConsentWalletApp> {
    
    bool firstTime;

    _ConsentWalletAppState({ this.firstTime });
        
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            navigatorKey: Get.key,
            onGenerateRoute: generateRoute,
            initialRoute: widget.initialToken == null ?  "/" : "view_${widget.initialToken}",
            debugShowCheckedModeBanner: false,
            title: 'Consent Wallet',
            theme: lightTheme,
            localizationsDelegates: const [
                S.delegate,
                viewer.S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate
            ],
            supportedLocales: S.delegate.supportedLocales,
            localeResolutionCallback: S.delegate.resolution(
                withCountry: false,
                fallback: const Locale('en', '')
            ),
            localeListResolutionCallback: S.delegate.listResolution(
                withCountry: false,
                fallback: const Locale('en', '')
            )
        );
    }

    Route<dynamic> generateRoute(RouteSettings settings) {
        switch (settings.name) {
            case '/':
                return GetRoute(
                    page: _wrapIfFirstTime(HomePage(version: widget.version)),
                    settings: settings,
                );
            default:
                if (settings.name.startsWith(ConsentWalletApp.viewPrefix)) {
                    return GetRoute(
                        settings: settings,
                        transition: Transition.fade,
                        page: _wrapIfFirstTime(ViewPage(
                            token: settings.name.substring(ConsentWalletApp.viewPrefix.length))
                        ));
                }

                return GetRoute(
                    settings: settings,
                    transition: Transition.fade,
                    page: Scaffold(
                        body: Center(
                            child: Text('No route defined for ${settings.name}')
                        ),
                    ));
        }
    }

    Widget _wrapIfFirstTime(Widget widget) {
        if (firstTime) {
            firstTime = false;
            return FirstTimePage(widget);
        }

        return widget;
    }
}

