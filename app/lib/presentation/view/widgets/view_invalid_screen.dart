import 'package:content_wallet/generated/l10n.dart';
import 'package:flutter/material.dart';

class ViewInvalidScreen extends StatelessWidget {

    final VoidCallback onReportError;

    const ViewInvalidScreen({
        @required this.onReportError
    });

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(),

            body: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                    Center(
                        child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(S.of(context).view_invalid_token,
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.headline6,
                            ),
                        ),
                    ),
                    RaisedButton.icon(
                        onPressed: onReportError,
                        icon: Icon(Icons.bug_report),
                        label: Text(S.of(context).view_notify_error)
                    )
                ],
            )
        );
    }
}