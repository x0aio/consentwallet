import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:receiptviewer/generated/i18n.dart';
import 'package:receiptviewer/receiptviewer.dart';
import 'package:receiptviewer/src/presentation/widgets/controller_card.dart';
import 'package:receiptviewer/src/presentation/widgets/field.dart';
import 'package:receiptviewer/src/presentation/widgets/service_card.dart';

typedef ReceiptViewerActionCallback = Function(ReceiptViewerAction action);

class ReceiptViewer extends StatelessWidget {

    final ConsentReceipt receipt;
    final String timestampFormat;
    final ReceiptViewerActionCallback onAction;

    const ReceiptViewer({
        @required this.receipt,
        @required this.timestampFormat,
        @required this.onAction
    });

    @override
    Widget build(BuildContext context) {
        final texts = S.of(context);
        final consentTimestamp = DateTime.fromMillisecondsSinceEpoch(receipt.consentTimestamp * 1000);

        return ListView(
            children: [
                Field(
                    name: texts.piiPrincipalId,
                    value: receipt.piiPrincipalId
                ),
                Field(
                    name: texts.consentReceiptID,
                    value: receipt.consentReceiptID
                ),
                Field(
                    name: texts.jurisdiction,
                    value: receipt.jurisdiction
                ),
                Field(
                    name: texts.language,
                    value: receipt.language
                ),
                Field(
                    name: texts.consentTimestamp,
                    value: DateFormat(timestampFormat).format(consentTimestamp)
                ),
                Field(
                    name: texts.policyUrl,
                    value: receipt.policyUrl,
                    trailing: IconButton(
                        icon: const Icon(Icons.public),
                        onPressed: () {
                            onAction(const ReceiptViewerAction.goToPrivacyPolicy());
                        },
                    ),
                ),
                if (receipt.spiCat != null && receipt.spiCat.isNotEmpty)
                    Field(
                        name: texts.spiCat,
                        value: receipt.spiCat
                    ),
                for (final controller in receipt.controllers)
                    ControllerCard(controller,
                        onAction: onAction,
                    ),
                for (final service in receipt.services)
                    ServiceCard(service,
                        onAction: onAction,
                    ),
                const SizedBox(
                    height: 56,
                )
            ],
        );
    }
}