import 'package:flutter/material.dart';
import 'package:receiptviewerweb/generated/l10n.dart';

class HomeDrawer extends StatelessWidget {

    final String version;
    final VoidCallback onOpenPrivacyPolicy;
    final VoidCallback onOpenConditions;
    final VoidCallback onOpenConsentReceiptSpecification;
    final VoidCallback onX0A;

    const HomeDrawer({
        @required this.version,
        @required this.onOpenPrivacyPolicy,
        @required this.onOpenConditions,
        @required this.onOpenConsentReceiptSpecification,
        @required this.onX0A,
    });

    @override
    Widget build(BuildContext context) {
        final texts = S.of(context);
        final theme = Theme.of(context);

        return Drawer(
            child: Container(
                color: theme.scaffoldBackgroundColor,
                child: Column(
                    children: <Widget>[
                        _buildHeader(theme),
                        Expanded(
                            child: _buildMenu(texts)
                        ),
                        _buildFooter(texts)
                    ],
                ),
            )
        );
    }

    Widget _buildHeader(ThemeData theme) {
        return  DrawerHeader(

            child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                    Text('Consent Wallet',
                        style: theme.textTheme.headline5.copyWith(color: Colors.white),
                    ),
                    GestureDetector(
                        onTap: onX0A,
                        child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16.0),
                            child: Image.asset("assets/by_x0A.png"),
                        ),
                    )
                ],
            )
        );
    }

    Widget _buildMenu(S texts) {
        return ListView(
            children: <Widget>[
                ListTile(
                    leading: Icon(Icons.account_balance),
                    title: Text(texts.drawer_privacy_policy),
                    onTap: onOpenPrivacyPolicy,
                ),
                ListTile(
                    leading: Icon(Icons.account_balance),
                    title: Text(texts.drawer_conditions),
                    onTap: onOpenConditions,
                ),
                ListTile(
                    leading: Icon(Icons.info),
                    title: Text(texts.drawer_specification),
                    onTap: onOpenConsentReceiptSpecification,
                ),
            ],
        );
    }

    Widget _buildFooter(S texts) {
        return Column(
            children: <Widget>[
                Divider(
                    color: Colors.white,
                ),
                ListTile(
                    leading: Icon(Icons.account_balance_wallet),
                    title: Text(texts.drawer_about(version)),
                )
            ],
        );
    }
}
