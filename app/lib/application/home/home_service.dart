
abstract class HomeService {

    Future<void> openUrl(String url);

    Future<void> openToken(String token);

    Future<String> openFile();
}