// ignore: avoid_web_libraries_in_flutter
import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:receiptviewerweb/application/home/home_navigator.dart';
import 'package:receiptviewerweb/presentation/view/view_page.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeNavigatorImpl extends HomeNavigator {

    final BuildContext _context;

    HomeNavigatorImpl(this._context);

    @override
    void goToRoot() {
        window.location.href = "https://consentwallet.app";
    }

    @override
    void openUrl(String url) {
        launch(url);
    }

    @override
    Future<void> openFile() async {
        final uploadInput = FileUploadInputElement();
        uploadInput.multiple = false;
        uploadInput.draggable = true;
        uploadInput.click();
        uploadInput.onChange.listen((event) {
            final file = uploadInput.files[0];
            final reader = FileReader();

            reader.onLoadEnd.listen((event) {
                Navigator.of(_context).push(MaterialPageRoute(
                    builder: (context) => ViewPage(token: reader.result as String)
                ));
            });

            reader.readAsText(file);
        });
    }
}