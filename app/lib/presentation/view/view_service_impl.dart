import 'dart:convert';

import 'package:catcher/catcher_plugin.dart';
import 'package:content_wallet/presentation/view/token_error.dart';
import 'package:content_wallet/application/view/view_service.dart';
import 'package:content_wallet/presentation/shared/texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wc_flutter_share/wc_flutter_share.dart';

class ViewServiceImpl extends ViewService {

    @override
    Future<bool> confirmDelete() async {
        final strings = texts();

        final confirmed = await Get.dialog(
            AlertDialog(
                title: Text(strings.view_confirm_delete_title, textAlign: TextAlign.center),
                content: Text(strings.view_confirm_delete_content),
                actions: <Widget>[
                    FlatButton(
                        onPressed: () => Get.back(result: false),
                        child: Text(strings.view_confirm_delete_cancel),
                    ),
                    FlatButton(
                        onPressed: () => Get.back(result: true),
                        child: Text(strings.view_confirm_delete_ok),
                    )
                ],
            )
        ) as bool;

        return confirmed ?? false;
    }

    @override
    void backToRoot() {
        Get.offAllNamed("/");
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