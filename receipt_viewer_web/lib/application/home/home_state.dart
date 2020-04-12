part of 'home_bloc.dart';

@freezed
abstract class HomeState with _$HomeState {

    const factory HomeState.loading() = _Loading;

    const factory HomeState.ready({
        @required String version
    }) = _Ready;
}
