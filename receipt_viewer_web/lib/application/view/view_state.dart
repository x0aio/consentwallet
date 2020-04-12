part of 'view_bloc.dart';

@freezed
abstract class ViewState with _$ViewState {

    const factory ViewState.loading() = _Loading;

    const factory ViewState.ready({
        @required ConsentReceipt receipt,
        @required String token
    }) = _Ready;

    const factory ViewState.invalid({
        @required String token,
        @required String error,
        @required StackTrace stackTrace
    }) = _Invalid;
}
