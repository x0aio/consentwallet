import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:receiptviewer/generated/i18n.dart' as viewer;
import 'package:receiptviewerweb/presentation/home/home_page.dart';
import 'package:receiptviewerweb/generated/i18n.dart';
import 'package:receiptviewerweb/presentation/themes.dart';
import 'package:receiptviewerweb/presentation/view/view_page.dart';

class ReceiptViewerWebApp extends StatelessWidget {

    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            navigatorKey: Get.key,
            onGenerateRoute: generateRoute,
            initialRoute: "/",
            debugShowCheckedModeBanner: false,
            title: 'Receipt Viewer Web',
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
                    page: HomePage(),
                    settings: settings,
                );
            case 'view': case '/view':
                return GetRoute(
                    settings: settings,
                    transition: Transition.fade,
                    page: ViewPage(token: (settings.arguments as Map<String, dynamic>)["token"] as String));
            default:
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
}

