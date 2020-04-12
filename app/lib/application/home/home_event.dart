part of 'home_bloc.dart';

@freezed
abstract class HomeEvent with _$HomeEvent {

    const factory HomeEvent.init() = _Init;
    const factory HomeEvent.search() = _Search;
    const factory HomeEvent.x0AInfo() = _X0AInfo;
    const factory HomeEvent.openFile() = _OpenFile;
    const factory HomeEvent.openPrivacyPolicy() = _OpenPrivacyPolicy;
    const factory HomeEvent.openConditions() = _OpenConditions;
    const factory HomeEvent.openConsentReceiptSpecification() = _OpenConsentReceiptSpecification;
    const factory HomeEvent.openToken(StoredToken token) = _OpenToken;
}