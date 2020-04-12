// ignore: avoid_web_libraries_in_flutter
import 'dart:html';

import 'package:get/get.dart';
import 'package:receiptviewerweb/application/home/home_service.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeServiceImpl extends HomeService {

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
                Get.toNamed("view", arguments: {
                    "token": reader.result as String
                });
            });

            reader.readAsText(file);
        });
    }
}