import 'package:content_wallet/domain/domain.dart';
import 'package:content_wallet/domain/stored_token_repository.dart';
import 'package:content_wallet/infrastructure/storedtoken/stored_token_adapter.dart';
import 'package:hive/hive.dart';

class HiveStoredTokenRepository extends StoredTokenRepository {

    static const boxName = "documents";

    final Box _box;

    HiveStoredTokenRepository(this._box);

    static Future<HiveStoredTokenRepository> of(List<int> encryptionKey) async {
        Hive.registerAdapter(StoredTokenAdapter());

        final box = await Hive.openBox(HiveStoredTokenRepository.boxName,
            encryptionKey: encryptionKey
        );

        return HiveStoredTokenRepository(box);
    }

    @override
    List<StoredToken> ask() {
        return _box.values.toList().cast<StoredToken>();
    }

    @override
    bool contains(String key) {
        return _box.containsKey(key);
    }

    @override
    void add(StoredToken token) {
        _box.put(token.key, token);
    }

    @override
    void delete(String key) {
        _box.delete(key);
    }
}