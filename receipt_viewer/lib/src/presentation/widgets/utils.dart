import 'package:flutter/material.dart';

Future<T> showModalSheet<T>({
    BuildContext context,
    WidgetBuilder builder,
    bool enableDrag = true,
    bool isDismissible = true
}) {
    return showModalBottomSheet(
        isScrollControlled: true,
        enableDrag: enableDrag,
        isDismissible: isDismissible,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15)
            )
        ),
        context: context,
        builder: (context) => Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15)
                ),
            ),
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
                top: 15
            ),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                    Container(
                        height: 5,
                        width: MediaQuery.of(context).size.width * 0.10,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(15),
                        ),
                        margin: const EdgeInsets.only(bottom: 16),
                    ),
                    Row(
                        children: <Widget>[
                            Flexible(
                                child: builder(context)
                            )
                        ],
                    )
                ]
            )
        )
    );
}