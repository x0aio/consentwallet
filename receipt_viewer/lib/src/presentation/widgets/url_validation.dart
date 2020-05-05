const urlPattern = r"(https?|http)://([-A-Z0-9.]+)(/[-A-Z0-9+&@#/%=~_|!:,.;]*)?(\?[A-Z0-9+&@#/%=~_|!:‌​,.;]*)?";

bool isUrlValid(String url) {
    if (url == null) {
        return null;
    }

    if (RegExp(urlPattern, caseSensitive: false).hasMatch(url)) {
        return true;
    }

    return false;
}