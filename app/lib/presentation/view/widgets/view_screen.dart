import 'package:flutter/material.dart';
import 'package:content_wallet/generated/i18n.dart' as local;
import 'package:receiptviewer/receiptviewer.dart';

class ViewScreen extends StatelessWidget {

    final ConsentReceipt receipt;
    final bool isSaved;
    final VoidCallback onShare;
    final VoidCallback onSave;
    final VoidCallback onDelete;
    final ReceiptViewerActionCallback onViewerAction;

    const ViewScreen({
        @required this.receipt,
        @required this.isSaved,
        @required this.onShare,
        @required this.onSave,
        @required this.onDelete,
        @required this.onViewerAction
    });

    @override
    Widget build(BuildContext context) {
        final texts = local.S.of(context);

        return Scaffold(
            appBar: AppBar(
                title: Text(texts.view_title),
                actions: <Widget>[
                    if (isSaved)
                        IconButton(
                            icon: Icon(Icons.delete),
                            tooltip: texts.view_delete,
                            onPressed: onDelete,
                        ),
                    IconButton(
                        icon: Icon(Icons.share),
                        tooltip: texts.view_share,
                        onPressed: onShare,
                    )
                ],
            ),
            body: Padding(
                padding: const EdgeInsets.all(8),
                child: ReceiptViewer(
                    receipt: receipt,
                    timestampFormat: texts.timestamp_format,
                    onAction: onViewerAction
                )
            ),
            floatingActionButton: isSaved ? null
                : FloatingActionButton.extended(
                    elevation: 4.0,
                    icon: const Icon(Icons.save),
                    label: Text(texts.view_save),
                    onPressed: onSave,
                ),
        );
    }
}