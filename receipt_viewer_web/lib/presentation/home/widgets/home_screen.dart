import 'package:flutter/material.dart';
import 'package:receiptviewerweb/generated/i18n.dart';

class HomeScreen extends StatelessWidget {

    final Widget drawer;
    final VoidCallback onSearchFile;
    final VoidCallback onGoRoot;

    const HomeScreen({
        @required this.drawer,
        @required this.onSearchFile,
        @required this.onGoRoot,
    });

    @override
    Widget build(BuildContext context) {
        final texts = S.of(context);
        final theme = Theme.of(context);
        
        return Scaffold(
            appBar: AppBar(
                title: Text(texts.home_title),
                leading: IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: onGoRoot,
                ),
                actions: <Widget>[
                    Builder(
                        builder: (context) => IconButton(
                            icon: Icon(Icons.more_vert),
                            onPressed: () => Scaffold.of(context).openEndDrawer(),
                        )
                    )
                ],
            ),
            endDrawer: drawer,
            body: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                    Center(
                        child: Text(texts.home_message_info,
                            style: theme.textTheme.headline6,
                            textAlign: TextAlign.center,
                        )
                    ),
                ],
            ),
            floatingActionButton: FloatingActionButton.extended(
                elevation: 4.0,
                icon: const Icon(Icons.folder),
                label: Text(texts.home_open_file),
                onPressed: onSearchFile,
            ),
            bottomNavigationBar: BottomAppBar(
                child: ListTile(
                    leading: Icon(Icons.warning),
                    title: Text(texts.home_warning_message)
                )
            ),
        );
    }
}