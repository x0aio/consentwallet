import 'package:flutter/cupertino.dart';
import 'package:receiptviewerweb/application/view/view_navigator.dart';
import 'package:receiptviewerweb/generated/l10n.dart';
import 'package:url_launcher/url_launcher.dart';

class ViewNavigatorImpl extends ViewNavigator {

    final BuildContext _context;

    ViewNavigatorImpl(this._context);

    @override
    Future<void> reportErrorAndBack({String token, String error, StackTrace stackTrace}) async {
        final texts = S.of(_context);

        await launch("mailto:hello@consentwallet.app?subject=${texts.error_email_subject}"
            "&body=${texts.error_email_body(error, token)}");

        Navigator.pop(_context);
    }

    @override
    Future<void> openUrl(String url) async {
        await launch(url);
    }
}