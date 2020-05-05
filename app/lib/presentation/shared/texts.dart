import 'package:content_wallet/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

String format(BuildContext context, DateTime dateTime) =>
    DateFormat(S.of(context).timestamp_format).format(dateTime);