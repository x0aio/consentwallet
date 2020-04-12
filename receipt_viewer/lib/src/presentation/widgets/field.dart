import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Field extends StatelessWidget {

    final String name;
    final dynamic value;
    final Widget trailing;

    const Field({
        @required this.name,
        this.value,
        this.trailing,
    });

    @override
    Widget build(BuildContext context) {
        final theme = Theme.of(context).textTheme;

        return Padding(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                    Flexible(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize:  MainAxisSize.min,
                            children: <Widget>[
                                Text(name,
                                    overflow: TextOverflow.ellipsis,
                                    style: theme.caption
                                ),
                                const SizedBox(height: 8),
                                 _buildValue(),
                            ],
                        ),
                    ),
                    if (trailing != null)
                        trailing
                ],
            )
        );
    }

    Widget _buildValue() {
        if (value is List) {
            return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                    for (final item in value)
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                                const Text(" - "),
                                Flexible(
                                    child: SelectableText(item.toString(),
                                        maxLines: 3,
                                        minLines: 1,
                                    ),
                                )
                            ],
                        )
                ],
            );
        } else {
            return SelectableText(value.toString(),
                maxLines: 3,
                minLines: 1,
            );
        }
    }
}