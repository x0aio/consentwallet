import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:receiptviewerweb/presentation/home/home_page.dart';
import 'package:receiptviewerweb/generated/l10n.dart';
import 'package:receiptviewerweb/presentation/themes.dart';

class ReceiptViewerWebApp extends StatelessWidget {

    final Locale locale;

    const ReceiptViewerWebApp(this.locale);

    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            locale: locale,
            title: 'Receipt Viewer Web',
            theme: theme,
            localizationsDelegates: const [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate
            ],
            home: HomePage(),
            supportedLocales: S.delegate.supportedLocales
        );
    }
}

