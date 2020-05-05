import 'dart:io';

import 'package:content_wallet/application/home/home_navigator.dart';
import 'package:content_wallet/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_document_picker/flutter_document_picker.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeNavigatorImpl extends HomeNavigator {

    final BuildContext _context;

    HomeNavigatorImpl(this._context);

    @override
    Future<void> openToken(String token) async {
        await Navigator.pushNamed(_context, "view_$token");
    }

    @override
    Future<String> openFile() async {
        final path = await FlutterDocumentPicker.openDocument(params: FlutterDocumentPickerParams(
            allowedFileExtensions: ['jwt', 'consent'],
            allowedUtiTypes: ['io.x0a.consent.receipt'],
            allowedMimeTypes: ['application/*'],
            invalidFileNameSymbols: ['/'],
        ));

        return File(path).readAsString();
    }

    @override
    Future<void> openUrl(String url) async {
        await launch(url);
    }

    @override
    Future<void> showWelcomeMessage() async {
        showDialog(context: _context, builder: (context) {
            final texts = S.of(context);

            return AlertDialog(
                title: Text(texts.welcome_title, textAlign: TextAlign.center),
                content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                        Text(texts.welcome_first_sentence),
                        Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            child: Text(texts.welcome_second_sentence),
                        ),
                        Text(texts.welcome_third_sentence),
                    ],
                ),
                actions: <Widget>[
                    FlatButton(
                        onPressed: () => Navigator.pop(context),
                        child: Text(texts.welcome_continue),
                    ),
                ],
            );
        });
    }
}