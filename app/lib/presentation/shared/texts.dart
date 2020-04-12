import 'package:content_wallet/generated/i18n.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

S texts() => S.of(Get.key.currentContext);

String format(DateTime dateTime) => DateFormat(texts().timestamp_format).format(dateTime);