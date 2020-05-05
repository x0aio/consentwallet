import 'package:content_wallet/application/home/home_navigator.dart';
import 'package:content_wallet/domain/domain.dart';
import 'package:content_wallet/domain/settings_repository.dart';
import 'package:content_wallet/domain/stored_token_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {

    final SettingsRepository _settingsRepository;
    final StoredTokenRepository _tokensRepository;
    final HomeNavigator _navigator;

    HomeBloc(this._settingsRepository, this._tokensRepository, this._navigator);

    @override
    HomeState get initialState => const HomeState.loading();

    @override
    Stream<HomeState> mapEventToState(HomeEvent event) async* {
        yield* event.when(
            init: _init,
            search: _search,
            openFile: _openFile,
            x0AInfo: _openX0AInfo,
            openConditions: _openConditions,
            openPrivacyPolicy: _openPrivacyPolicy,
            openConsentReceiptSpecification: _openConsentReceiptSpecification,
            openToken: _openToken
        );
    }

    Stream<HomeState> _init() async* {
        if ((await _settingsRepository.get()).firstTime) {
            await _tokensRepository.add(StoredToken(
                key: "9c83eee2-836e-4a74-9807-e8c8153ec1e0",
                token: "eyJhbGciOiJIUzI1NiIsInR5cGUiOiJKV1QifQ.eyJ2ZXJzaW9uIjoiS0ktQ1ItdjEuMS4wIiwianVyaXNkaWN0aW9uIjoiRVMiLCJjb25zZW50VGltZXN0YW1wIjoxNTg0NTI1NjAwLCJjb2xsZWN0aW9uTWV0aG9kIjoiV2ViIEZvcm0iLCJjb25zZW50UmVjZWlwdElEIjoiOWM4M2VlZTItODM2ZS00YTc0LTk4MDctZThjODE1M2VjMWUwIiwibGFuZ3VhZ2UiOiJlbiIsInBpaVByaW5jaXBhbElkIjoiam9obi5zbm93QGVtYWlsLmNvbSIsInBvbGljeVVybCI6Imh0dHBzOi8vdXJsIiwiY29udHJvbGxlcnMiOlt7InBpaUNvbnRyb2xsZXIiOiJNZWdhIFNob3AiLCJvbkJlaGFsZiI6ZmFsc2UsImNvbnRhY3QiOiJUaW0gTWVnYVNob3BwZXIiLCJvcmciOiJNZWdhIFNob3AgQ29tcGFueSIsImFkZHJlc3MiOnsic3RyZWV0QWRkcmVzcyI6IlN0cmVldCA5IiwicG9zdGFsQ29kZSI6IjE1MDA4IiwiYWRkcmVzc1JlZ2lvbiI6IkEgQ29ydcOxYSIsImFkZHJlc3NMb2NhbGl0eSI6IkEgQ29ydcOxYSIsImFkZHJlc3NDb3VudHJ5IjoiRVMifSwiZW1haWwiOiJlbWFpbEBtZWdhc2hvcC5jb20iLCJwaG9uZSI6IiszNDYwMDAwMDAwMCJ9LHsicGlpQ29udHJvbGxlciI6Ikludm9pY2UgQWdlbmN5Iiwib25CZWhhbGYiOnRydWUsImNvbnRhY3QiOiJBZGFtIEludm9pY2VzIiwib3JnIjoiSW52b2ljZSBBZ2VuY3kgQ29tcGFueSIsImFkZHJlc3MiOnsic3RyZWV0QWRkcmVzcyI6IlN0cmVldCAxMCIsInBvc3RhbENvZGUiOiIxMDAxMSIsImFkZHJlc3NSZWdpb24iOiJOWSIsImFkZHJlc3NMb2NhbGl0eSI6Ik5ldyBZb3JrIiwiYWRkcmVzc0NvdW50cnkiOiJVUyJ9LCJlbWFpbCI6ImVtYWlsQGludm9pY2VhZ2VuY3kuY29tIiwicGhvbmUiOiIrMzQ2MDAwMDAwMDEifV0sInNlcnZpY2VzIjpbeyJzZXJ2aWNlIjoiU2FsZSIsInB1cnBvc2VzIjpbeyJwdXJwb3NlIjoiU2FsZSBhbmQgYmlsbGluZyAiLCJwdXJwb3NlQ2F0ZWdvcnkiOlsiQ29udHJhY3RlZCBTZXJ2aWNlIl0sInBpaUNhdGVnb3J5IjpbIkNvbnRhY3QiLCJPZmZpY2lhbCBJRCIsIkZpbmFuY2lhbCJdLCJ0ZXJtaW5hdGlvbiI6Imh0dHBzOi8vdXJsI3Rlcm1pbmF0aW9uIiwicHJpbWFyeVB1cnBvc2UiOnRydWUsImNvbnNlbnRUeXBlIjoiRVhQTElDSVQiLCJ0aGlyZFBhcnR5RGlzY2xvc3VyZSI6dHJ1ZSwidGhpcmRQYXJ0eU5hbWUiOiJJbnZvaWNlIEFnZW5jeSJ9LHsicHVycG9zZSI6IlNoaXBwaW5nIiwicHVycG9zZUNhdGVnb3J5IjpbIlVzZSBGb3IgRGVsaXZlcnkiXSwicGlpQ2F0ZWdvcnkiOlsiQ29udGFjdCJdLCJ0ZXJtaW5hdGlvbiI6Imh0dHBzOi8vdXJsI3Rlcm1pbmF0aW9uIiwicHJpbWFyeVB1cnBvc2UiOnRydWUsImNvbnNlbnRUeXBlIjoiRVhQTElDSVQiLCJ0aGlyZFBhcnR5RGlzY2xvc3VyZSI6dHJ1ZSwidGhpcmRQYXJ0eU5hbWUiOiJBbnkgY2FycmllciJ9LHsicHVycG9zZSI6IkNvbXBseWluZyB3aXRoIGxlZ2FsIG9ibGlnYXRpb25zIiwicHVycG9zZUNhdGVnb3J5IjpbIkxlZ2FsbHkgUmVxdWlyZWQgRGF0YSBSZXRlbnRpb24iLCJSZXF1aXJlZCBieSBMYXcgRW5mb3JjZW1lbnQgb3IgR292ZXJubWVudCJdLCJwaWlDYXRlZ29yeSI6WyJDb250YWN0IiwiT2ZmaWNpYWwgSUQiLCJGaW5hbmNpYWwiXSwidGVybWluYXRpb24iOiJOL0EiLCJwcmltYXJ5UHVycG9zZSI6ZmFsc2UsImNvbnNlbnRUeXBlIjoiTi9BIiwidGhpcmRQYXJ0eURpc2Nsb3N1cmUiOnRydWUsInRoaXJkUGFydHlOYW1lIjoiUmVxdWVzdGluZyBsZWdhbCBhdXRob3JpdHkifV19LHsic2VydmljZSI6Ik5ld3NsZXR0ZXIgc3Vic2NyaXB0aW9uIiwicHVycG9zZXMiOlt7InB1cnBvc2UiOiJOZXdzbGV0dGVyIGRlbGl2ZXJ5IiwicHVycG9zZUNhdGVnb3J5IjpbIk1hcmtldGluZyJdLCJwaWlDYXRlZ29yeSI6WyJDb250YWN0Il0sInRlcm1pbmF0aW9uIjoiaHR0cHM6Ly91cmwjdGVybWluYXRpb24iLCJwcmltYXJ5UHVycG9zZSI6dHJ1ZSwiY29uc2VudFR5cGUiOiJFWFBMSUNJVCIsInRoaXJkUGFydHlEaXNjbG9zdXJlIjp0cnVlLCJ0aGlyZFBhcnR5TmFtZSI6IkFueSBtYWlsIHNlcnZpY2UifV19XSwic2Vuc2l0aXZlIjp0cnVlLCJzcGlDYXQiOlsiT2ZmaWNpYWwgSUQiLCJGaW5hbmNpYWwiXX0.yH5ivWC6nwABGbn4P5VTmh3xQFyWBeQMehUNEYUZdTI",
                consentTimestamp: DateTime.parse("2020-03-18 11:00:00"),
                principalController: "Mega Shop",
                isDemo: true,
                savedAt: DateTime.now()
            ));
            await _tokensRepository.add(StoredToken(
                key: "482dd279-e680-441e-8f2f-0c77be4a7375",
                token: "eyJhbGciOiJIUzI1NiIsInR5cGUiOiJKV1QifQ.eyJ2ZXJzaW9uIjoiS0ktQ1ItdjEuMS4wIiwianVyaXNkaWN0aW9uIjoiRVMiLCJjb25zZW50VGltZXN0YW1wIjoxNTg0OTcwMzgwLCJjb2xsZWN0aW9uTWV0aG9kIjoiV2ViIEZvcm0iLCJjb25zZW50UmVjZWlwdElEIjoiNDgyZGQyNzktZTY4MC00NDFlLThmMmYtMGM3N2JlNGE3Mzc1IiwibGFuZ3VhZ2UiOiJlbiIsInBpaVByaW5jaXBhbElkIjoiam9obi5zbm93QGVtYWlsLmNvbSIsInBvbGljeVVybCI6Imh0dHBzOi8vdXJsIiwiY29udHJvbGxlcnMiOlt7InBpaUNvbnRyb2xsZXIiOiJGdW4gV2ViIiwib25CZWhhbGYiOmZhbHNlLCJjb250YWN0IjoiTGFycnkgRnVuIiwib3JnIjoiRnVuIFdlYiBDb21wYW55IiwiYWRkcmVzcyI6eyJzdHJlZXRBZGRyZXNzIjoiU3RyZWV0IDMiLCJwb3N0YWxDb2RlIjoiMTUwMDgiLCJhZGRyZXNzUmVnaW9uIjoiQSBDb3J1w7FhIiwiYWRkcmVzc0xvY2FsaXR5IjoiQSBDb3J1w7FhIiwiYWRkcmVzc0NvdW50cnkiOiJFUyJ9LCJlbWFpbCI6ImVtYWlsQGZ1bndlYi5jb20iLCJwaG9uZSI6IiszNDYwMDAwMDAwNCJ9XSwic2VydmljZXMiOlt7InNlcnZpY2UiOiJOZXdzbGV0dGVyIHN1YnNjcmlwdGlvbiIsInB1cnBvc2VzIjpbeyJwdXJwb3NlIjoiTmV3c2xldHRlciBkZWxpdmVyeSIsInB1cnBvc2VDYXRlZ29yeSI6WyJNYXJrZXRpbmciXSwicGlpQ2F0ZWdvcnkiOlsiQ29udGFjdCJdLCJ0ZXJtaW5hdGlvbiI6Imh0dHBzOi8vdXJsI3Rlcm1pbmF0aW9uIiwicHJpbWFyeVB1cnBvc2UiOnRydWUsImNvbnNlbnRUeXBlIjoiRVhQTElDSVQiLCJ0aGlyZFBhcnR5RGlzY2xvc3VyZSI6dHJ1ZSwidGhpcmRQYXJ0eU5hbWUiOiJBbnkgbWFpbCBzZXJ2aWNlIn1dfV0sInNlbnNpdGl2ZSI6ZmFsc2UsInNwaUNhdCI6W119.OUfQumBf6fozIumnq3LpyHY7rsH76DAqOJGRkIMn8Yk",
                consentTimestamp: DateTime.parse("2020-03-23 13:33:00"),
                principalController: "Fun Web",
                isDemo: true,
                savedAt: DateTime.now()
            ));

            await _navigator.showWelcomeMessage();
            await _settingsRepository.markAsNotFirstTime();
        }

        yield HomeState.ready(await _tokensRepository.ask());
    }

    Stream<HomeState> _search() async* {
        //TODO
    }

    Stream<HomeState> _openConsentReceiptSpecification() async* {
        _navigator.openUrl("https://kantarainitiative.org/download/7902/");
    }

    Stream<HomeState> _openConditions() async* {
        _navigator.openUrl("https://consentwallet.app/terms_and_conditions.html");
    }

    Stream<HomeState> _openPrivacyPolicy() async* {
        _navigator.openUrl("https://consentwallet.app/privacy_policy.html");
    }

    Stream<HomeState> _openX0AInfo() async* {
        _navigator.openUrl("https://x0a.io");
    }

    Stream<HomeState> _openToken(StoredToken token) async* {
        await _navigator.openToken(token.token);
        add(const HomeEvent.init());
    }

    Stream<HomeState> _openFile() async* {
        final token = await _navigator.openFile();
        await _navigator.openToken(token);
        add(const HomeEvent.init());
    }
}