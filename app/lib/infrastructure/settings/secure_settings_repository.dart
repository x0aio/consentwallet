import 'dart:convert';

import 'package:content_wallet/domain/domain.dart';
import 'package:content_wallet/domain/settings_repository.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive/hive.dart';

class SecureSettingsRepository extends SettingsRepository {

    final _secureStorage = const FlutterSecureStorage();

    @override
    Future<Settings> get() async {
        final value = await _secureStorage.read(key: "encryptionKey");

        if (value == null) {
            final key = Hive.generateSecureKey();

            await _secureStorage.write(
                key: "encryptionKey",
                value: base64.encode(key)
            );

            return Settings(encryptionKey: key, firstTime: true);
        } else {
            return Settings(encryptionKey: base64.decode(value), firstTime: false);
        }
    }
}

