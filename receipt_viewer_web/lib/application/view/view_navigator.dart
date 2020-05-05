abstract class ViewNavigator {

    Future<void> reportErrorAndBack({String token, String error, StackTrace stackTrace});

    Future<void> openUrl(String url);
}