import 'package:flutter/material.dart';

class HomeLoadingScreen extends StatelessWidget {

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const <Widget>[
                    Center(
                        child: CircularProgressIndicator()
                    )
                ],
            )
        );
    }
}