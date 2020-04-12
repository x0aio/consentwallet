// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'token_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$TokenErrorTearOff {
  const _$TokenErrorTearOff();

  _TokenError call({@required String token, @required String message}) {
    return _TokenError(
      token: token,
      message: message,
    );
  }
}

// ignore: unused_element
const $TokenError = _$TokenErrorTearOff();

mixin _$TokenError {
  String get token;
  String get message;

  $TokenErrorCopyWith<TokenError> get copyWith;
}

abstract class $TokenErrorCopyWith<$Res> {
  factory $TokenErrorCopyWith(
          TokenError value, $Res Function(TokenError) then) =
      _$TokenErrorCopyWithImpl<$Res>;
  $Res call({String token, String message});
}

class _$TokenErrorCopyWithImpl<$Res> implements $TokenErrorCopyWith<$Res> {
  _$TokenErrorCopyWithImpl(this._value, this._then);

  final TokenError _value;
  // ignore: unused_field
  final $Res Function(TokenError) _then;

  @override
  $Res call({
    Object token = freezed,
    Object message = freezed,
  }) {
    return _then(_value.copyWith(
      token: token == freezed ? _value.token : token as String,
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

abstract class _$TokenErrorCopyWith<$Res> implements $TokenErrorCopyWith<$Res> {
  factory _$TokenErrorCopyWith(
          _TokenError value, $Res Function(_TokenError) then) =
      __$TokenErrorCopyWithImpl<$Res>;
  @override
  $Res call({String token, String message});
}

class __$TokenErrorCopyWithImpl<$Res> extends _$TokenErrorCopyWithImpl<$Res>
    implements _$TokenErrorCopyWith<$Res> {
  __$TokenErrorCopyWithImpl(
      _TokenError _value, $Res Function(_TokenError) _then)
      : super(_value, (v) => _then(v as _TokenError));

  @override
  _TokenError get _value => super._value as _TokenError;

  @override
  $Res call({
    Object token = freezed,
    Object message = freezed,
  }) {
    return _then(_TokenError(
      token: token == freezed ? _value.token : token as String,
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

class _$_TokenError implements _TokenError {
  const _$_TokenError({@required this.token, @required this.message})
      : assert(token != null),
        assert(message != null);

  @override
  final String token;
  @override
  final String message;

  @override
  String toString() {
    return 'TokenError(token: $token, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TokenError &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(message);

  @override
  _$TokenErrorCopyWith<_TokenError> get copyWith =>
      __$TokenErrorCopyWithImpl<_TokenError>(this, _$identity);
}

abstract class _TokenError implements TokenError {
  const factory _TokenError(
      {@required String token, @required String message}) = _$_TokenError;

  @override
  String get token;
  @override
  String get message;
  @override
  _$TokenErrorCopyWith<_TokenError> get copyWith;
}
