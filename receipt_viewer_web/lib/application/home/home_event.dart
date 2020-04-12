part of 'home_bloc.dart';

@freezed
abstract class HomeEvent with _$HomeEvent {

    const factory HomeEvent.init() = _Init;
    const factory HomeEvent.x0AInfo() = _X0AInfo;
    const factory HomeEvent.searchFile() = _SearchFile;
    const factory HomeEvent.openPrivacyPolicy() = _OpenPrivacyPolicy;
    const factory HomeEvent.openConditions() = _OpenConditions;
    const factory HomeEvent.openConsentReceiptSpecification() = _OpenConsentReceiptSpecification;
    const factory HomeEvent.goRoot() = _GoRoot;
}