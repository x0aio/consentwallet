import 'package:flutter/material.dart';
import 'package:receiptviewer/receiptviewer.dart';

class AddressField extends StatelessWidget {

    final ReceiptViewerMessages _messages;
    final String name;
    final PiiControllerAddress address;

    const AddressField(this._messages, {
        @required this.name,
        @required this.address
    });

    @override
    Widget build(BuildContext context) {
        final theme = Theme.of(context).textTheme;

        return Padding(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                    Text(name, style:theme.caption),
                    Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Column(
                            children: <Widget>[
                                Text(address.streetAddress),
                                Text(_messages.address_postal_code_and_locality(address.postalCode, address.addressLocality)),
                                Text(_messages.address_region_and_country(address.addressRegion, address.addressCountry)),
                            ],
                        )
                    )
                ],
            ),
        );
    }
}