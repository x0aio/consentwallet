
import 'package:flutter/material.dart';
import 'package:receiptviewer/receiptviewer.dart';
import 'package:receiptviewer/src/presentation/widgets/address_field.dart';
import 'package:receiptviewer/src/presentation/widgets/field.dart';
import 'package:receiptviewer/src/presentation/widgets/url_validation.dart';
import 'package:receiptviewer/src/presentation/widgets/utils.dart';

class ControllerCard extends StatelessWidget {

    final ReceiptViewerMessages _messages;
    final PiiController _controller;
    final ReceiptViewerActionCallback onAction;

    const ControllerCard(this._controller, this._messages, {
        @required this.onAction
    });

    @override
    Widget build(BuildContext context) {
        return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
                Divider(color: Colors.white),
                Field(
                    name: _messages.piiController,
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
        return Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                    Field(
                        name: _messages.piiController,
                        value: _controller.piiController
                    ),
                    Field(
                        name: _messages.org,
                        value: _controller.org
                    ),
                    Field(
                        name: _messages.contact,
                        value: _controller.contact,
                        /* TODO
                        trailing: IconButton(
                            icon: const Icon(Icons.person_add),
                            onPressed: () {
                                onAction(ReceiptViewerAction.addContact(_controller));
                            },
                        ),*/
                    ),
                    if (isUrlValid(_controller.url))
                        Field(
                            name: _messages.url,
                            value: _controller.url,
                            trailing: IconButton(
                                icon: const Icon(Icons.public),
                                onPressed: () {
                                    onAction(ReceiptViewerAction.visitWeb(_controller));
                                },
                            ),
                        ),
                    Field(
                        name: _messages.onBehalf,
                        value: _controller.onBehalf ? _messages.onBehalf_yes : _messages.onBehalf_no
                    ),
                    Field(
                        name: _messages.phone,
                        value: _controller.phone,
                        trailing: IconButton(
                            icon: const Icon(Icons.call),
                            onPressed: () {
                                onAction(ReceiptViewerAction.call(_controller));
                            },
                        ),
                    ),
                    Field(
                        name: _messages.email,
                        value: _controller.email,
                        trailing: IconButton(
                            icon: const Icon(Icons.email),
                            onPressed: () {
                                onAction(ReceiptViewerAction.sendEmail(_controller));
                            },
                        ),
                    ),
                    AddressField(_messages,
                        name: _messages.address,
                        address: _controller.address
                    ),
                ],
            ),
        );
    }
}