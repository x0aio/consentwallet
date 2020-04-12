import 'package:get/get.dart';
import 'package:receiptviewerweb/application/view/view_service.dart';
import 'package:receiptviewerweb/generated/i18n.dart';
import 'package:url_launcher/url_launcher.dart';

class ViewServiceImpl extends ViewService {

    @override
    Future<void> reportErrorAndBack({String token, String error, StackTrace stackTrace}) async {
        final texts = S.of(Get.context);

        await launch("mailto:hello@consentwallet.app?subject=${texts.error_email_subject}"
            "&body=${texts.error_email_body(error, token)}");

        Get.back();
    }

    @override
    Future<void> openUrl(String url) async {
        await launch(url);
    }


}