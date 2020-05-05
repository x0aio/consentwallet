
abstract class HomeNavigator {

    Future<void> openUrl(String url);

    Future<void> openToken(String token);

    Future<String> openFile();

    Future<void> showWelcomeMessage();
}