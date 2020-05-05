import 'package:flutter/material.dart';
import 'package:receiptviewerweb/generated/l10n.dart' as local;
import 'package:receiptviewer/receiptviewer.dart';
import 'package:receiptviewerweb/presentation/view/widgets/receipt_viewer_messages_impl.dart';

class ViewScreen extends StatelessWidget {

    final ConsentReceipt receipt;
    final ReceiptViewerActionCallback onViewerAction;

    const ViewScreen({
        @required this.receipt,
        @required this.onViewerAction
    });

    @override
    Widget build(BuildContext context) {
        final texts = local.S.of(context);

        return Scaffold(
            appBar: AppBar(
                title: Text(texts.view_title),
            ),
            body: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ReceiptViewer(
                    messages: ReceiptViewerMessagesImpl(context),
                    receipt: receipt,
                    timestampFormat: texts.timestamp_format,
                    onAction: onViewerAction,
                )
            )
        );
    }
}