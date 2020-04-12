
import 'package:flutter/material.dart';
import 'package:receiptviewer/generated/i18n.dart';
import 'package:receiptviewer/receiptviewer.dart';
import 'package:receiptviewer/src/presentation/widgets/address_field.dart';
import 'package:receiptviewer/src/presentation/widgets/field.dart';
import 'package:receiptviewer/src/presentation/widgets/utils.dart';

class ControllerCard extends StatelessWidget {

    final PiiController _controller;
    final ReceiptViewerActionCallback onAction;

    const ControllerCard(this._controller, {
        @required this.onAction
    });

    @override
    Widget build(BuildContext context) {
        final texts = S.of(context);

        return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
                Divider(color: Colors.white),
                Field(
                    name: texts.piiController,
                    value: _controller.piiController,
                    trailing: IconButton(
                        icon: Icon(Icons.remove_red_eye),
                        onPressed: () {
                            showModalSheet(
                                context: context,
                                builder: _buildControllerSheet
                            );
                        },
                    ),
                )
            ],
        );
    }

    Widget _buildControllerSheet(BuildContext context) {
        final texts = S.of(context);

        return Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                    Field(
                        name: texts.piiController,
                        value: _controller.piiController
                    ),
                    Field(
                        name: texts.org,
                        value: _controller.org
                    ),
                    Field(
                        name: texts.contact,
                        value: _controller.contact,
                        /* TODO
                        trailing: IconButton(
                            icon: const Icon(Icons.person_add),
                            onPressed: () {
                                onAction(ReceiptViewerAction.addContact(_controller));
                            },
                        ),*/
                    ),
                    if (_controller.url != null)
                        Field(
                            name: texts.url,
                            value: _controller.url,
                            trailing: IconButton(
                                icon: const Icon(Icons.public),
                                onPressed: () {
                                    onAction(ReceiptViewerAction.visitWeb(_controller));
                                },
                            ),
                        ),
                    Field(
                        name: texts.onBehalf,
                        value: _controller.onBehalf ? texts.onBehalf_yes : texts.onBehalf_no
                    ),
                    Field(
                        name: texts.phone,
                        value: _controller.phone,
                        trailing: IconButton(
                            icon: const Icon(Icons.call),
                            onPressed: () {
                                onAction(ReceiptViewerAction.call(_controller));
                            },
                        ),
                    ),
                    Field(
                        name: texts.email,
                        value: _controller.email,
                        trailing: IconButton(
                            icon: const Icon(Icons.email),
                            onPressed: () {
                                onAction(ReceiptViewerAction.sendEmail(_controller));
                            },
                        ),
                    ),
                    AddressField(
                        name: texts.address,
                        address: _controller.address
                    ),
                ],
            ),
        );
    }
}