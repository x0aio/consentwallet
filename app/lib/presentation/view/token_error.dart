import 'package:freezed_annotation/freezed_annotation.dart';

part 'token_error.freezed.dart';

@freezed
abstract class TokenError with _$TokenError {

    const factory TokenError({
        @required String token,
        @required String message
    }) = _TokenError;
}