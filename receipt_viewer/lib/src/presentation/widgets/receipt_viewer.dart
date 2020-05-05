import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:receiptviewer/receiptviewer.dart';
import 'package:receiptviewer/src/presentation/widgets/controller_card.dart';
import 'package:receiptviewer/src/presentation/widgets/field.dart';
import 'package:receiptviewer/src/presentation/widgets/service_card.dart';
import 'package:receiptviewer/src/presentation/widgets/url_validation.dart';

typedef ReceiptViewerActionCallback = Function(ReceiptViewerAction action);

class ReceiptViewer extends StatelessWidget {

    final ReceiptViewerMessages messages;
    final ConsentReceipt receipt;
    final String timestampFormat;
    final ReceiptViewerActionCallback onAction;

    const ReceiptViewer({
        @required this.messages,
        @required this.receipt,
        @required this.timestampFormat,
        @required this.onAction
    });

    @override
    Widget build(BuildContext context) {
        final consentTimestamp = DateTime.fromMillisecondsSinceEpoch(receipt.consentTimestamp * 1000);

        return ListView(
            children: [
                Field(
                    name: messages.piiPrincipalId,
                    value: receipt.piiPrincipalId
                ),
                Field(
                    name: messages.consentReceiptID,
                    value: receipt.consentReceiptID
                ),
                Field(
                    name: messages.jurisdiction,
                    value: receipt.jurisdiction
                ),
                Field(
                    name: messages.language,
                    value: receipt.language
                ),
                Field(
                    name: messages.consentTimestamp,
                    value: DateFormat(timestampFormat).format(consentTimestamp)
                ),
                Field(
                    name: messages.policyUrl,
                    value: receipt.policyUrl,
                    trailing: _policyUrlButton(receipt.policyUrl),
                ),
                if (receipt.spiCat != null && receipt.spiCat.isNotEmpty)
                    Field(
                        name: messages.spiCat,
                        value: receipt.spiCat
                    ),
                for (final controller in receipt.controllers)
                    ControllerCard(controller, messages,
                        onAction: onAction,
                    ),
                for (final service in receipt.services)
                    ServiceCard(service, messages,
                        onAction: onAction,
                    ),
                const SizedBox(
                    height: 56,
                )
            ],
        );
    }

    Widget _policyUrlButton(String url) {
        if (isUrlValid(url)) {
            return IconButton(
                icon: const Icon(Icons.public),
                onPressed: () {
                    onAction(const ReceiptViewerAction.goToPrivacyPolicy());
                },
            );
        }

        return null;
    }
}