import 'package:content_wallet/domain/domain.dart';

abstract class StoredTokenRepository {

    List<StoredToken> ask();

    bool contains(String key);

    void add(StoredToken token);

    void delete(String key);
}