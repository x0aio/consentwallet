import 'package:flutter/material.dart';

abstract class ViewService {

    Future<bool> confirmDelete();

    void backToRoot();

    Future<void> openUrl(String url);

    Future<void> share({
        @required String id,
        @required String token
    });

    Future<void> reportError({
        @required String message,
        @required String token,
        @required StackTrace stackTrace
    });
}