import 'dart:convert';

import 'package:catcher/catcher_plugin.dart';
import 'package:content_wallet/application/view/view_navigator.dart';
import 'package:content_wallet/generated/l10n.dart';
import 'package:content_wallet/presentation/view/token_error.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wc_flutter_share/wc_flutter_share.dart';

class ViewNavigatorImpl extends ViewNavigator {

    final BuildContext _context;

    ViewNavigatorImpl(this._context);

    @override
    Future<bool> confirmDelete() async {
        final texts = S.of(_context);

        final confirmed = await showDialog(context: _context, builder: (context) {
            return AlertDialog(
                title: Text(texts.view_confirm_delete_title, textAlign: TextAlign.center),
                content: Text(texts.view_confirm_delete_content),
                actions: <Widget>[
                    FlatButton(
                        onPressed: () => Navigator.pop(context, false),
                        child: Text(texts.view_confirm_delete_cancel),
                    ),
                    FlatButton(
                        onPressed: () => Navigator.pop(context, true),
                        child: Text(texts.view_confirm_delete_ok),
                    )
                ],
            );
        }) as bool;

        return confirmed ?? false;
    }

    @override
    void backToRoot() {
        if (Navigator.canPop(_context)) {
            Navigator.pop(_context);
        } else {
            Navigator.popAndPushNamed(_context, "/");
        }
    }

    @override
    Future<void> openUrl(String url) async {
        await launch(url);
    }

    @override
    Future<void> share({
        @required String id,
        @required String token
    }) async {
        await WcFlutterShare.share(
            sharePopupTitle: 'share',
            fileName: "$id.consent",
            mimeType: "application/consent",
            bytesOfFile: utf8.encode(token));
    }

    @override
    Future<void> reportError({
        @required String message,
        @required String token,
        @required StackTrace stackTrace
    }) async {
        Catcher.reportCheckedError(TokenError(
            token: token,
            message: message
        ), stackTrace);
    }
}