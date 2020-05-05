import 'package:content_wallet/domain/domain.dart';
import 'package:content_wallet/domain/stored_token_repository.dart';
import 'package:content_wallet/infrastructure/storedtoken/stored_token_adapter.dart';
import 'package:hive/hive.dart';

class HiveStoredTokenRepository extends StoredTokenRepository {


    static const boxName = "documents";

    final Future<Box> _box;

    HiveStoredTokenRepository(this._box);

    factory HiveStoredTokenRepository.of(Future<List<int>> encryptionKey) {
        Hive.registerAdapter(StoredTokenAdapter());

        return HiveStoredTokenRepository(_createBox(encryptionKey));
    }

    static Future<Box> _createBox(Future<List<int>> encryptionKey) async {
        return Hive.openBox(HiveStoredTokenRepository.boxName,
            encryptionKey: await encryptionKey
        );
    }

    @override
    Future<List<StoredToken>> ask() async {
        return (await _box).values.toList().cast<StoredToken>();
    }

    @override
    Future<bool> contains(String key) async {
        return (await _box).containsKey(key);
    }

    @override
    Future<void> add(StoredToken token) async {
        (await _box).put(token.key, token);
    }

    @override
    Future<void> delete(String key) async {
        (await _box).delete(key);
    }
}