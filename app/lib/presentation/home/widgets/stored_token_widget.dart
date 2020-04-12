import 'package:content_wallet/domain/domain.dart';
import 'package:content_wallet/presentation/shared/texts.dart';
import 'package:flutter/material.dart';

class StoredTokenWidget extends StatelessWidget {
    
    final StoredToken token;
    final VoidCallback onSelect;

    const StoredTokenWidget({
        @required this.token,
        @required this.onSelect
    });

    @override
    Widget build(BuildContext context) {
        return ListTile(
            title: Text(token.principalController),
            subtitle: Text(texts().home_stored_token_consentTimestamp(format(token.consentTimestamp))),
            trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                    if (token.isDemo)
                        Container(
                            margin: const EdgeInsets.only(right: 16),
                            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 6),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Theme.of(context).accentColor,
                            ),
                            child: Text("DEMO",
                                style: Theme.of(context).textTheme.caption.copyWith(color: Colors.white),
                            ),
                        ),
                    Icon(Icons.arrow_forward_ios),
                ],
            ),
            onTap: onSelect,
        );
    }
}