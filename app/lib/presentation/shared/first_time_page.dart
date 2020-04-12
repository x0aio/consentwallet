import 'package:content_wallet/generated/i18n.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirstTimePage extends StatelessWidget {

    final Widget _child;

    const FirstTimePage(this._child);

    @override
    Widget build(BuildContext context) {
        final texts = S.of(context);

        Future.delayed(const Duration(milliseconds: 50), () {
            Get.defaultDialog(
                title: texts.welcome_title,
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
                confirm: FlatButton(
                    onPressed: () => Get.back(),
                    child: Text(texts.welcome_continue),
                )
            );
        });

        return _child;
    }
}