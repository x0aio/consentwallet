import 'package:content_wallet/main_navigator.dart';
import 'package:content_wallet/presentation/home/home_page.dart';
import 'package:content_wallet/presentation/view/view_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:content_wallet/generated/l10n.dart';
import 'package:content_wallet/presentation/themes.dart';

class ConsentWalletApp extends StatelessWidget {

    static const viewPrefix = "view_";

    final String initialToken;
    final String version;

    const ConsentWalletApp({
        @required this.initialToken,
        @required this.version
    });

        
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            navigatorKey: navigatorKey,
            onGenerateRoute: generateRoute,
            initialRoute: initialToken == null ?  "/" : "view_$initialToken",
            debugShowCheckedModeBanner: false,
            title: 'Consent Wallet',
            theme: lightTheme,
            localizationsDelegates: const [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate
            ],
            supportedLocales: S.delegate.supportedLocales
        );
    }

    Route<dynamic> generateRoute(RouteSettings settings) {
        switch (settings.name) {
            case '/':
                return MaterialPageRoute(
                    builder: (context) => HomePage(version: version),
                );
            default:
                if (settings.name.startsWith(ConsentWalletApp.viewPrefix)) {
                    return MaterialPageRoute(
                        builder: (context) => ViewPage(
                            token: settings.name.substring(ConsentWalletApp.viewPrefix.length)
                        )
                    );
                }

                return MaterialPageRoute(
                    builder: (context) => Scaffold(
                        body: Center(
                            child: Text('No route defined for ${settings.name}')
                        ),
                    )
                );
        }
    }

}

