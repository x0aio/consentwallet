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
            key: "9c83eee2-836e-4a74-9807-e8c8153ec1e0",
            token: "eyJhbGciOiJIUzI1NiIsInR5cGUiOiJKV1QifQ.eyJ2ZXJzaW9uIjoiS0ktQ1ItdjEuMS4wIiwianVyaXNkaWN0aW9uIjoiRVMiLCJjb25zZW50VGltZXN0YW1wIjoxNTg0NTI1NjAwLCJjb2xsZWN0aW9uTWV0aG9kIjoiV2ViIEZvcm0iLCJjb25zZW50UmVjZWlwdElEIjoiOWM4M2VlZTItODM2ZS00YTc0LTk4MDctZThjODE1M2VjMWUwIiwibGFuZ3VhZ2UiOiJlbiIsInBpaVByaW5jaXBhbElkIjoiam9obi5zbm93QGVtYWlsLmNvbSIsInBvbGljeVVybCI6Imh0dHBzOi8vdXJsIiwiY29udHJvbGxlcnMiOlt7InBpaUNvbnRyb2xsZXIiOiJNZWdhIFNob3AiLCJvbkJlaGFsZiI6ZmFsc2UsImNvbnRhY3QiOiJUaW0gTWVnYVNob3BwZXIiLCJvcmciOiJNZWdhIFNob3AgQ29tcGFueSIsImFkZHJlc3MiOnsic3RyZWV0QWRkcmVzcyI6IlN0cmVldCA5IiwicG9zdGFsQ29kZSI6IjE1MDA4IiwiYWRkcmVzc1JlZ2lvbiI6IkEgQ29ydcOxYSIsImFkZHJlc3NMb2NhbGl0eSI6IkEgQ29ydcOxYSIsImFkZHJlc3NDb3VudHJ5IjoiRVMifSwiZW1haWwiOiJlbWFpbEBtZWdhc2hvcC5jb20iLCJwaG9uZSI6IiszNDYwMDAwMDAwMCJ9LHsicGlpQ29udHJvbGxlciI6Ikludm9pY2UgQWdlbmN5Iiwib25CZWhhbGYiOnRydWUsImNvbnRhY3QiOiJBZGFtIEludm9pY2VzIiwib3JnIjoiSW52b2ljZSBBZ2VuY3kgQ29tcGFueSIsImFkZHJlc3MiOnsic3RyZWV0QWRkcmVzcyI6IlN0cmVldCAxMCIsInBvc3RhbENvZGUiOiIxMDAxMSIsImFkZHJlc3NSZWdpb24iOiJOWSIsImFkZHJlc3NMb2NhbGl0eSI6Ik5ldyBZb3JrIiwiYWRkcmVzc0NvdW50cnkiOiJVUyJ9LCJlbWFpbCI6ImVtYWlsQGludm9pY2VhZ2VuY3kuY29tIiwicGhvbmUiOiIrMzQ2MDAwMDAwMDEifV0sInNlcnZpY2VzIjpbeyJzZXJ2aWNlIjoiU2FsZSIsInB1cnBvc2VzIjpbeyJwdXJwb3NlIjoiU2FsZSBhbmQgYmlsbGluZyAiLCJwdXJwb3NlQ2F0ZWdvcnkiOlsiQ29udHJhY3RlZCBTZXJ2aWNlIl0sInBpaUNhdGVnb3J5IjpbIkNvbnRhY3QiLCJPZmZpY2lhbCBJRCIsIkZpbmFuY2lhbCJdLCJ0ZXJtaW5hdGlvbiI6Imh0dHBzOi8vdXJsI3Rlcm1pbmF0aW9uIiwicHJpbWFyeVB1cnBvc2UiOnRydWUsImNvbnNlbnRUeXBlIjoiRVhQTElDSVQiLCJ0aGlyZFBhcnR5RGlzY2xvc3VyZSI6dHJ1ZSwidGhpcmRQYXJ0eU5hbWUiOiJJbnZvaWNlIEFnZW5jeSJ9LHsicHVycG9zZSI6IlNoaXBwaW5nIiwicHVycG9zZUNhdGVnb3J5IjpbIlVzZSBGb3IgRGVsaXZlcnkiXSwicGlpQ2F0ZWdvcnkiOlsiQ29udGFjdCJdLCJ0ZXJtaW5hdGlvbiI6Imh0dHBzOi8vdXJsI3Rlcm1pbmF0aW9uIiwicHJpbWFyeVB1cnBvc2UiOnRydWUsImNvbnNlbnRUeXBlIjoiRVhQTElDSVQiLCJ0aGlyZFBhcnR5RGlzY2xvc3VyZSI6dHJ1ZSwidGhpcmRQYXJ0eU5hbWUiOiJBbnkgY2FycmllciJ9LHsicHVycG9zZSI6IkNvbXBseWluZyB3aXRoIGxlZ2FsIG9ibGlnYXRpb25zIiwicHVycG9zZUNhdGVnb3J5IjpbIkxlZ2FsbHkgUmVxdWlyZWQgRGF0YSBSZXRlbnRpb24iLCJSZXF1aXJlZCBieSBMYXcgRW5mb3JjZW1lbnQgb3IgR292ZXJubWVudCJdLCJwaWlDYXRlZ29yeSI6WyJDb250YWN0IiwiT2ZmaWNpYWwgSUQiLCJGaW5hbmNpYWwiXSwidGVybWluYXRpb24iOiJOL0EiLCJwcmltYXJ5UHVycG9zZSI6ZmFsc2UsImNvbnNlbnRUeXBlIjoiTi9BIiwidGhpcmRQYXJ0eURpc2Nsb3N1cmUiOnRydWUsInRoaXJkUGFydHlOYW1lIjoiUmVxdWVzdGluZyBsZWdhbCBhdXRob3JpdHkifV19LHsic2VydmljZSI6Ik5ld3NsZXR0ZXIgc3Vic2NyaXB0aW9uIiwicHVycG9zZXMiOlt7InB1cnBvc2UiOiJOZXdzbGV0dGVyIGRlbGl2ZXJ5IiwicHVycG9zZUNhdGVnb3J5IjpbIk1hcmtldGluZyJdLCJwaWlDYXRlZ29yeSI6WyJDb250YWN0Il0sInRlcm1pbmF0aW9uIjoiaHR0cHM6Ly91cmwjdGVybWluYXRpb24iLCJwcmltYXJ5UHVycG9zZSI6dHJ1ZSwiY29uc2VudFR5cGUiOiJFWFBMSUNJVCIsInRoaXJkUGFydHlEaXNjbG9zdXJlIjp0cnVlLCJ0aGlyZFBhcnR5TmFtZSI6IkFueSBtYWlsIHNlcnZpY2UifV19XSwic2Vuc2l0aXZlIjp0cnVlLCJzcGlDYXQiOlsiT2ZmaWNpYWwgSUQiLCJGaW5hbmNpYWwiXX0.yH5ivWC6nwABGbn4P5VTmh3xQFyWBeQMehUNEYUZdTI",
            consentTimestamp: DateTime.parse("2020-03-18 11:00:00"),
            principalController: "Mega Shop",
            isDemo: true,
            savedAt: DateTime.now()
        ));
        tokenRepository.add(StoredToken(
            key: "482dd279-e680-441e-8f2f-0c77be4a7375",
            token: "eyJhbGciOiJIUzI1NiIsInR5cGUiOiJKV1QifQ.eyJ2ZXJzaW9uIjoiS0ktQ1ItdjEuMS4wIiwianVyaXNkaWN0aW9uIjoiRVMiLCJjb25zZW50VGltZXN0YW1wIjoxNTg0OTcwMzgwLCJjb2xsZWN0aW9uTWV0aG9kIjoiV2ViIEZvcm0iLCJjb25zZW50UmVjZWlwdElEIjoiNDgyZGQyNzktZTY4MC00NDFlLThmMmYtMGM3N2JlNGE3Mzc1IiwibGFuZ3VhZ2UiOiJlbiIsInBpaVByaW5jaXBhbElkIjoiam9obi5zbm93QGVtYWlsLmNvbSIsInBvbGljeVVybCI6Imh0dHBzOi8vdXJsIiwiY29udHJvbGxlcnMiOlt7InBpaUNvbnRyb2xsZXIiOiJGdW4gV2ViIiwib25CZWhhbGYiOmZhbHNlLCJjb250YWN0IjoiTGFycnkgRnVuIiwib3JnIjoiRnVuIFdlYiBDb21wYW55IiwiYWRkcmVzcyI6eyJzdHJlZXRBZGRyZXNzIjoiU3RyZWV0IDMiLCJwb3N0YWxDb2RlIjoiMTUwMDgiLCJhZGRyZXNzUmVnaW9uIjoiQSBDb3J1w7FhIiwiYWRkcmVzc0xvY2FsaXR5IjoiQSBDb3J1w7FhIiwiYWRkcmVzc0NvdW50cnkiOiJFUyJ9LCJlbWFpbCI6ImVtYWlsQGZ1bndlYi5jb20iLCJwaG9uZSI6IiszNDYwMDAwMDAwNCJ9XSwic2VydmljZXMiOlt7InNlcnZpY2UiOiJOZXdzbGV0dGVyIHN1YnNjcmlwdGlvbiIsInB1cnBvc2VzIjpbeyJwdXJwb3NlIjoiTmV3c2xldHRlciBkZWxpdmVyeSIsInB1cnBvc2VDYXRlZ29yeSI6WyJNYXJrZXRpbmciXSwicGlpQ2F0ZWdvcnkiOlsiQ29udGFjdCJdLCJ0ZXJtaW5hdGlvbiI6Imh0dHBzOi8vdXJsI3Rlcm1pbmF0aW9uIiwicHJpbWFyeVB1cnBvc2UiOnRydWUsImNvbnNlbnRUeXBlIjoiRVhQTElDSVQiLCJ0aGlyZFBhcnR5RGlzY2xvc3VyZSI6dHJ1ZSwidGhpcmRQYXJ0eU5hbWUiOiJBbnkgbWFpbCBzZXJ2aWNlIn1dfV0sInNlbnNpdGl2ZSI6ZmFsc2UsInNwaUNhdCI6W119.OUfQumBf6fozIumnq3LpyHY7rsH76DAqOJGRkIMn8Yk",
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


