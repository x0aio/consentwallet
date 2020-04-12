import 'package:flutter/material.dart';
import 'package:receiptviewer/generated/i18n.dart';
import 'package:receiptviewer/receiptviewer.dart';

class AddressField extends StatelessWidget {

    final String name;
    final PiiControllerAddress address;

    const AddressField({
        @required this.name,
        @required this.address
    });

    @override
    Widget build(BuildContext context) {
        final theme = Theme.of(context).textTheme;
        final texts = S.of(context);

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
                                Text(texts.address_postal_code_and_locality(address.postalCode, address.addressLocality)),
                                Text(texts.address_region_and_country(address.addressRegion, address.addressRegion)),
                            ],
                        )
                    )
                ],
            ),
        );
    }
}