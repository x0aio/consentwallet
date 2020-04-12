import 'package:content_wallet/application/home/home_service.dart';
import 'package:content_wallet/domain/domain.dart';
import 'package:content_wallet/domain/stored_token_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {

    final StoredTokenRepository _repository;
    final HomeService _service;

    HomeBloc(this._repository, this._service);

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
        yield HomeState.ready(_repository.ask());
    }

    Stream<HomeState> _search() async* {
        //TODO
    }

    Stream<HomeState> _openConsentReceiptSpecification() async* {
        _service.openUrl("https://kantarainitiative.org/download/7902/");
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

    Stream<HomeState> _openToken(StoredToken token) async* {
        await _service.openToken(token.token);
        add(const HomeEvent.init());
    }

    Stream<HomeState> _openFile() async* {
        final token = await _service.openFile();
        await _service.openToken(token);
        add(const HomeEvent.init());
    }
}