import 'dart:io';

import 'package:content_wallet/application/home/home_service.dart';
import 'package:flutter_document_picker/flutter_document_picker.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeServiceImpl extends HomeService {

    @override
    Future<void> openToken(String token) async {
        await Get.toNamed("view_$token");
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
}