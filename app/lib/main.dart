import 'dart:async';

import 'package:catcher/catcher_plugin.dart';
import 'package:content_wallet/consent_wallet_bloc_delegate.dart';
import 'package:content_wallet/domain/settings_repository.dart';
import 'package:content_wallet/domain/stored_token_repository.dart';
import 'package:content_wallet/infrastructure/settings/secure_settings_repository.dart';
import 'package:content_wallet/infrastructure/storedtoken/hive_stored_token_repository.dart';
import 'package:content_wallet/main_navigator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:content_wallet/presentation/consent_wallet_app.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:package_info/package_info.dart';
import 'package:path_provider/path_provider.dart';

const methodChannel = MethodChannel("consent.x0a.io/method");
const eventsChannel = EventChannel("consent.x0a.io/events");

Future<void> main() async {
    WidgetsFlutterBinding.ensureInitialized();
    final token = await _getInitialToken();
    final packageInfo = await PackageInfo.fromPlatform();
    BlocSupervisor.delegate = ConsentWalletBlocDelegate();
    Hive.init((await getApplicationDocumentsDirectory()).path);

    final settingsRepository = SecureSettingsRepository();

    eventsChannel.receiveBroadcastStream().listen((token) {
        navigateTo("view_$token");
    });

    Catcher(
        MultiRepositoryProvider(
            providers: [
                RepositoryProvider<SettingsRepository>(
                    create: (context) => settingsRepository,
                ),
                RepositoryProvider<StoredTokenRepository>(
                    create: (context) => HiveStoredTokenRepository.of(_encryptionKeyGetter(settingsRepository))
                ),
            ],
            child: ConsentWalletApp(
                initialToken: token,
                version: "${packageInfo.version}${_isDev() ? '.dev' :  ''}"
            ),
        ),
        debugConfig: CatcherOptions(DialogReportMode(), [
            EmailManualHandler(["hello@consentwallet.app"])
        ]),
        releaseConfig: CatcherOptions(DialogReportMode(), [
            EmailManualHandler(["hello@consentwallet.app"])
        ]),
    );
}

Future<String> _getInitialToken() async {
    try {
        return await methodChannel.invokeMethod('getInitialReceipt');
    } on PlatformException catch (e) {
        print(".....ERROR GETTING TOKEN... ${e.message}");
        rethrow;
    }
}

bool _isDev() {
    bool isDev = false;

    assert(isDev = true);

    return isDev;
}

Future<List<int>> _encryptionKeyGetter(SettingsRepository settingsRepository) async {
    return (await settingsRepository.get()).encryptionKey;
}