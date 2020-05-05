import 'package:flutter/material.dart';

final navigatorKey = GlobalKey<NavigatorState>();

Future<dynamic> navigateTo(String routeName) {
    return navigatorKey.currentState.pushNamed(routeName);
}