import 'package:content_wallet/domain/domain.dart';
import 'package:content_wallet/presentation/home/widgets/stored_token_widget.dart';
import 'package:flutter/material.dart';
import 'package:content_wallet/generated/l10n.dart';

class HomeScreen extends StatelessWidget {

    final Widget drawer;
    final VoidCallback onOpenFile;
    final Function(StoredToken token) onOpenToken;
    final List<StoredToken> tokens;
    final VoidCallback onSearch;

    const HomeScreen({
        @required this.drawer,
        @required this.onOpenFile,
        @required this.onOpenToken,
        @required this.tokens,
        @required this.onSearch,
    });

    @override
    Widget build(BuildContext context) {
        final texts = S.of(context);
        
        return Scaffold(
            appBar: AppBar(
                title: Text(texts.home_title),
                actions: const <Widget>[
                    /*
                    IconButton(
                        icon: Icon(Icons.search),
                        onPressed: onSearch,
                    )*/
                ],
            ),
            drawer: drawer,
            body: ListView.builder(
                itemCount: tokens.length,
                itemBuilder: (builder, index) => StoredTokenWidget(
                    token: tokens[index],
                    onSelect: () => onOpenToken(tokens[index])
                )
            ),
            floatingActionButton: FloatingActionButton.extended(
                elevation: 4.0,
                icon: const Icon(Icons.add),
                label: Text(texts.home_open),
                onPressed: onOpenFile,
            ),
        );
    }
}