import 'dart:convert';

import 'package:content_wallet/domain/domain.dart';
import 'package:content_wallet/domain/settings_repository.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive/hive.dart';
import 'package:synchronized/synchronized.dart';

class SecureSettingsRepository extends SettingsRepository {

    static const settingsKey = "settings";

    final _secureStorage = const FlutterSecureStorage();
    final _lock = Lock();

    @override
    Future<Settings> get() => _lock.synchronized(() async {
        final value = await _secureStorage.read(key: settingsKey);

        if (value == null) {
            final settings = Settings(
                encryptionKey: Hive.generateSecureKey(),
                firstTime: true
            );

            await _save(settings);

            return settings;
        } else {
            return Settings.fromJson(jsonDecode(value) as Map<String, dynamic>);
        }
    });

    Future<void> _save(Settings settings) async {
        await _secureStorage.write(
            key: settingsKey,
            value: jsonEncode(settings.toJson())
        );
    }

    @override
    Future<void> markAsNotFirstTime() async {
        final settings = await get();

        await _save(settings.copyWith(firstTime: false));
    }


}

