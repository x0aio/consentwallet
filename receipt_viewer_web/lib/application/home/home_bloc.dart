import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:receiptviewerweb/application/home/home_service.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {

    final HomeService _service;

    HomeBloc(this._service);

    @override
    HomeState get initialState => const HomeState.loading();

    @override
    Stream<HomeState> mapEventToState(HomeEvent event) async* {
        yield* event.when(
            init: _init,
            x0AInfo: _openX0AInfo,
            searchFile: _searchFile,
            openConditions: _openConditions,
            openPrivacyPolicy: _openPrivacyPolicy,
            openConsentReceiptSpecification: _openConsentReceiptSpecification,
            goRoot: _goRoot
        );
    }

    Stream<HomeState> _init() async* {
        yield const HomeState.ready(version: "1.0.0"); //TODO packageInfo don't work in web
    }

    Stream<HomeState> _openConditions() async* {
        _service.openUrl("https://consent.x0a.io/terms_and_conditions.html");
    }

    Stream<HomeState> _openPrivacyPolicy() async* {
        _service.openUrl("https://consent.x0a.io/privacy_policy.html");
    }

    Stream<HomeState> _openX0AInfo() async* {
        _service.openUrl("https://x0a.io");
    }

    Stream<HomeState> _openConsentReceiptSpecification() async* {
        _service.openUrl("https://kantarainitiative.org/download/7902/");
    }

    Stream<HomeState> _goRoot() async* {
        _service.goToRoot();
    }

    Stream<HomeState> _searchFile() async* {
        await _service.openFile();
    }
}