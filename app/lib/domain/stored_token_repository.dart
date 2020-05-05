import 'package:content_wallet/domain/domain.dart';

abstract class StoredTokenRepository {

    Future<List<StoredToken>> ask();

    Future<bool> contains(String key);

    Future<void> add(StoredToken token);

    Future<void> delete(String key);
}