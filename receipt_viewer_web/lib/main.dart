// ignore: avoid_web_libraries_in_flutter
import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:receiptviewerweb/presentation/receipt_viewer_web_app.dart';

Future<void> main() async {
    var language = window.navigator.language;

    if (language.contains("-")) {
        language = language.substring(0, language.indexOf("-"));
    }

    runApp(ReceiptViewerWebApp(Locale(language)));
}

