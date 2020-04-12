import 'dart:async';

import 'package:catcher/catcher_plugin.dart';
import 'package:content_wallet/consent_wallet_bloc_delegate.dart';
import 'package:content_wallet/domain/domain.dart';
import 'package:content_wallet/domain/stored_token_repository.dart';
import 'package:content_wallet/infrastructure/settings/secure_settings_repository.dart';
import 'package:content_wallet/infrastructure/storedtoken/hive_stored_token_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:content_wallet/presentation/consent_wallet_app.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
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
    final settings = await settingsRepository.get();
    final tokenRepository = await HiveStoredTokenRepository.of(settings.encryptionKey);

    if (settings.firstTime) {
        tokenRepository.add(StoredToken(
            key: "ddea6edd-5c00-40d5-98a0-44ec26444888",
            token: "eyJhbGciOiJIUzI1NiIsInR5cGUiOiJKV1QifQ.eyJ2ZXJzaW9uIjoiS0ktQ1ItdjEuMS4wIiwianVyaXNkaWN0aW9uIjoiRVMiLCJjb25zZW50VGltZXN0YW1wIjoxNTg0NTI1NjAwLCJjb2xsZWN0aW9uTWV0aG9kIjoiV2ViIEZvcm0iLCJjb25zZW50UmVjZWlwdElEIjoiZGRlYTZlZGQtNWMwMC00MGQ1LTk4YTAtNDRlYzI2NDQ0ODg4IiwibGFuZ3VhZ2UiOiJlbiIsInBpaVByaW5jaXBhbElkIjoiam9obi5zbm93QGVtYWlsLmNvbSIsInBvbGljeVVybCI6Imh0dHBzOi8vdXJsIiwiY29udHJvbGxlcnMiOlt7InBpaUNvbnRyb2xsZXIiOiJNZWdhIFNob3AiLCJvbkJlaGFsZiI6ZmFsc2UsImNvbnRhY3QiOiJUaW0gTWVnYVNob3BwZXIiLCJvcmciOiJNZWdhIFNob3AgQ29tcGFueSIsImFkZHJlc3MiOnsic3RyZWV0QWRkcmVzcyI6IlN0cmVldCA5IiwicG9zdGFsQ29kZSI6IjE1MDA4IiwiYWRkcmVzc1JlZ2lvbiI6IkEgQ29ydcOxYSIsImFkZHJlc3NMb2NhbGl0eSI6IkEgQ29ydcOxYSIsImFkZHJlc3NDb3VudHJ5IjoiRVMifSwiZW1haWwiOiJlbWFpbEBtZWdhc2hvcC5jb20iLCJwaG9uZSI6IiszNDYwMDAwMDAwMCJ9LHsicGlpQ29udHJvbGxlciI6Ikludm9pY2UgQWdlbmN5Iiwib25CZWhhbGYiOnRydWUsImNvbnRhY3QiOiJBZGFtIEludm9pY2VzIiwib3JnIjoiSW52b2ljZSBBZ2VuY3kgQ29tcGFueSIsImFkZHJlc3MiOnsic3RyZWV0QWRkcmVzcyI6IlN0cmVldCAxMCIsInBvc3RhbENvZGUiOiIxMDAxMSIsImFkZHJlc3NSZWdpb24iOiJOWSIsImFkZHJlc3NMb2NhbGl0eSI6Ik5ldyBZb3JrIiwiYWRkcmVzc0NvdW50cnkiOiJVUyJ9LCJlbWFpbCI6ImVtYWlsQGludm9pY2VhZ2VuY3kuY29tIiwicGhvbmUiOiIrMzQ2MDAwMDAwMDEifV0sInNlcnZpY2VzIjpbeyJzZXJ2aWNlIjoiU2FsZSIsInB1cnBvc2VzIjpbeyJwdXJwb3NlIjoiU2FsZSBhbmQgYmlsbGluZyAiLCJwdXJwb3NlQ2F0ZWdvcnkiOlsiQ29udHJhY3RlZCBTZXJ2aWNlIl0sInBpaUNhdGVnb3J5IjpbIkNvbnRhY3QiLCJPZmZpY2lhbCBJRCIsIkZpbmFuY2lhbCJdLCJ0ZXJtaW5hdGlvbiI6Imh0dHBzOi8vdXJsI3Rlcm1pbmF0aW9uIiwidGhpcmRQYXJ0eURpc2Nsb3N1cmUiOnRydWUsInRoaXJkUGFydHlOYW1lIjoiSW52b2ljZSBBZ2VuY3kifSx7InB1cnBvc2UiOiJTaGlwcGluZyIsInB1cnBvc2VDYXRlZ29yeSI6WyJVc2UgRm9yIERlbGl2ZXJ5Il0sInBpaUNhdGVnb3J5IjpbIkNvbnRhY3QiXSwidGVybWluYXRpb24iOiJodHRwczovL3VybCN0ZXJtaW5hdGlvbiIsInRoaXJkUGFydHlEaXNjbG9zdXJlIjp0cnVlLCJ0aGlyZFBhcnR5TmFtZSI6IkFueSBjYXJyaWVyIn0seyJwdXJwb3NlIjoiQ29tcGx5aW5nIHdpdGggbGVnYWwgb2JsaWdhdGlvbnMiLCJwdXJwb3NlQ2F0ZWdvcnkiOlsiTGVnYWxseSBSZXF1aXJlZCBEYXRhIFJldGVudGlvbiIsIlJlcXVpcmVkIGJ5IExhdyBFbmZvcmNlbWVudCBvciBHb3Zlcm5tZW50Il0sInBpaUNhdGVnb3J5IjpbIkNvbnRhY3QiLCJPZmZpY2lhbCBJRCIsIkZpbmFuY2lhbCJdLCJ0ZXJtaW5hdGlvbiI6Ik4vQSIsInRoaXJkUGFydHlEaXNjbG9zdXJlIjp0cnVlLCJ0aGlyZFBhcnR5TmFtZSI6IlJlcXVlc3RpbmcgbGVnYWwgYXV0aG9yaXR5In1dfSx7InNlcnZpY2UiOiJOZXdzbGV0dGVyIHN1YnNjcmlwdGlvbiIsInB1cnBvc2VzIjpbeyJwdXJwb3NlIjoiTmV3c2xldHRlciBkZWxpdmVyeSIsInB1cnBvc2VDYXRlZ29yeSI6WyJNYXJrZXRpbmciXSwicGlpQ2F0ZWdvcnkiOlsiQ29udGFjdCJdLCJ0ZXJtaW5hdGlvbiI6Imh0dHBzOi8vdXJsI3Rlcm1pbmF0aW9uIiwidGhpcmRQYXJ0eURpc2Nsb3N1cmUiOnRydWUsInRoaXJkUGFydHlOYW1lIjoiQW55IG1haWwgc2VydmljZSJ9XX1dLCJzZW5zaXRpdmUiOnRydWUsInNwaUNhdCI6WyJPZmZpY2lhbCBJRCIsIkZpbmFuY2lhbCJdfQ.QcubebS37DTr-wyAkxjVp9RdnUVe56xq2xCjflZ9eqI",
            consentTimestamp: DateTime.parse("2020-03-18 11:00:00"),
            principalController: "Mega Shop",
            isDemo: true,
            savedAt: DateTime.now()
        ));
        tokenRepository.add(StoredToken(
            key: "28596b94-c39d-4743-a286-4149ac06468f",
            token: "eyJhbGciOiJIUzI1NiIsInR5cGUiOiJKV1QifQ.eyJ2ZXJzaW9uIjoiS0ktQ1ItdjEuMS4wIiwianVyaXNkaWN0aW9uIjoiRVMiLCJjb25zZW50VGltZXN0YW1wIjoxNTg0OTcwMzgwLCJjb2xsZWN0aW9uTWV0aG9kIjoiV2ViIEZvcm0iLCJjb25zZW50UmVjZWlwdElEIjoiMjg1OTZiOTQtYzM5ZC00NzQzLWEyODYtNDE0OWFjMDY0NjhmIiwibGFuZ3VhZ2UiOiJlbiIsInBpaVByaW5jaXBhbElkIjoiam9obi5zbm93QGVtYWlsLmNvbSIsInBvbGljeVVybCI6Imh0dHBzOi8vdXJsIiwiY29udHJvbGxlcnMiOlt7InBpaUNvbnRyb2xsZXIiOiJGdW4gV2ViIiwib25CZWhhbGYiOmZhbHNlLCJjb250YWN0IjoiTGFycnkgRnVuIiwib3JnIjoiRnVuIFdlYiBDb21wYW55IiwiYWRkcmVzcyI6eyJzdHJlZXRBZGRyZXNzIjoiU3RyZWV0IDMiLCJwb3N0YWxDb2RlIjoiMTUwMDgiLCJhZGRyZXNzUmVnaW9uIjoiQSBDb3J1w7FhIiwiYWRkcmVzc0xvY2FsaXR5IjoiQSBDb3J1w7FhIiwiYWRkcmVzc0NvdW50cnkiOiJFUyJ9LCJlbWFpbCI6ImVtYWlsQGZ1bndlYi5jb20iLCJwaG9uZSI6IiszNDYwMDAwMDAwNCJ9XSwic2VydmljZXMiOlt7InNlcnZpY2UiOiJOZXdzbGV0dGVyIHN1YnNjcmlwdGlvbiIsInB1cnBvc2VzIjpbeyJwdXJwb3NlIjoiTmV3c2xldHRlciBkZWxpdmVyeSIsInB1cnBvc2VDYXRlZ29yeSI6WyJNYXJrZXRpbmciXSwicGlpQ2F0ZWdvcnkiOlsiQ29udGFjdCJdLCJ0ZXJtaW5hdGlvbiI6Imh0dHBzOi8vdXJsI3Rlcm1pbmF0aW9uIiwidGhpcmRQYXJ0eURpc2Nsb3N1cmUiOnRydWUsInRoaXJkUGFydHlOYW1lIjoiQW55IG1haWwgc2VydmljZSJ9XX1dLCJzZW5zaXRpdmUiOmZhbHNlLCJzcGlDYXQiOltdfQ.0M-T4Jv_XZqbldb9KtoJzN5uRxjqfgax7saXIiEXgGM",
            consentTimestamp: DateTime.parse("2020-03-23 13:33:00"),
            principalController: "Fun Web",
            isDemo: true,
            savedAt: DateTime.now()
        ));
    }

    eventsChannel.receiveBroadcastStream().listen((token) {
        Get.toNamed("view_$token");
    });

    Catcher(
        RepositoryProvider<StoredTokenRepository>(
            create: (context) => tokenRepository,
            child: ConsentWalletApp(
                initialToken: token,
                isFirstTime: settings.firstTime,
                version: "${packageInfo.version}${_isDev() ? '.dev' :  ''}"
            ),
        ),
        debugConfig: CatcherOptions(DialogReportMode(), [
            EmailManualHandler(["hello@consentwallet.app"])
        ]),
        releaseConfig: CatcherOptions(DialogReportMode(), [
            EmailManualHandler(["hello@consentwallet.app"])
        ]),
        navigatorKey: Get.key
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


