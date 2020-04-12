// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'domain.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$StoredTokenTearOff {
  const _$StoredTokenTearOff();

  _StoredToken call(
      {@required String key,
      @required String token,
      @required String principalController,
      @required DateTime consentTimestamp,
      @required DateTime savedAt,
      @required bool isDemo}) {
    return _StoredToken(
      key: key,
      token: token,
      principalController: principalController,
      consentTimestamp: consentTimestamp,
      savedAt: savedAt,
      isDemo: isDemo,
    );
  }
}

// ignore: unused_element
const $StoredToken = _$StoredTokenTearOff();

mixin _$StoredToken {
  String get key;
  String get token;
  String get principalController;
  DateTime get consentTimestamp;
  DateTime get savedAt;
  bool get isDemo;

  $StoredTokenCopyWith<StoredToken> get copyWith;
}

abstract class $StoredTokenCopyWith<$Res> {
  factory $StoredTokenCopyWith(
          StoredToken value, $Res Function(StoredToken) then) =
      _$StoredTokenCopyWithImpl<$Res>;
  $Res call(
      {String key,
      String token,
      String principalController,
      DateTime consentTimestamp,
      DateTime savedAt,
      bool isDemo});
}

class _$StoredTokenCopyWithImpl<$Res> implements $StoredTokenCopyWith<$Res> {
  _$StoredTokenCopyWithImpl(this._value, this._then);

  final StoredToken _value;
  // ignore: unused_field
  final $Res Function(StoredToken) _then;

  @override
  $Res call({
    Object key = freezed,
    Object token = freezed,
    Object principalController = freezed,
    Object consentTimestamp = freezed,
    Object savedAt = freezed,
    Object isDemo = freezed,
  }) {
    return _then(_value.copyWith(
      key: key == freezed ? _value.key : key as String,
      token: token == freezed ? _value.token : token as String,
      principalController: principalController == freezed
          ? _value.principalController
          : principalController as String,
      consentTimestamp: consentTimestamp == freezed
          ? _value.consentTimestamp
          : consentTimestamp as DateTime,
      savedAt: savedAt == freezed ? _value.savedAt : savedAt as DateTime,
      isDemo: isDemo == freezed ? _value.isDemo : isDemo as bool,
    ));
  }
}

abstract class _$StoredTokenCopyWith<$Res>
    implements $StoredTokenCopyWith<$Res> {
  factory _$StoredTokenCopyWith(
          _StoredToken value, $Res Function(_StoredToken) then) =
      __$StoredTokenCopyWithImpl<$Res>;
  @override
  $Res call(
      {String key,
      String token,
      String principalController,
      DateTime consentTimestamp,
      DateTime savedAt,
      bool isDemo});
}

class __$StoredTokenCopyWithImpl<$Res> extends _$StoredTokenCopyWithImpl<$Res>
    implements _$StoredTokenCopyWith<$Res> {
  __$StoredTokenCopyWithImpl(
      _StoredToken _value, $Res Function(_StoredToken) _then)
      : super(_value, (v) => _then(v as _StoredToken));

  @override
  _StoredToken get _value => super._value as _StoredToken;

  @override
  $Res call({
    Object key = freezed,
    Object token = freezed,
    Object principalController = freezed,
    Object consentTimestamp = freezed,
    Object savedAt = freezed,
    Object isDemo = freezed,
  }) {
    return _then(_StoredToken(
      key: key == freezed ? _value.key : key as String,
      token: token == freezed ? _value.token : token as String,
      principalController: principalController == freezed
          ? _value.principalController
          : principalController as String,
      consentTimestamp: consentTimestamp == freezed
          ? _value.consentTimestamp
          : consentTimestamp as DateTime,
      savedAt: savedAt == freezed ? _value.savedAt : savedAt as DateTime,
      isDemo: isDemo == freezed ? _value.isDemo : isDemo as bool,
    ));
  }
}

class _$_StoredToken implements _StoredToken {
  const _$_StoredToken(
      {@required this.key,
      @required this.token,
      @required this.principalController,
      @required this.consentTimestamp,
      @required this.savedAt,
      @required this.isDemo})
      : assert(key != null),
        assert(token != null),
        assert(principalController != null),
        assert(consentTimestamp != null),
        assert(savedAt != null),
        assert(isDemo != null);

  @override
  final String key;
  @override
  final String token;
  @override
  final String principalController;
  @override
  final DateTime consentTimestamp;
  @override
  final DateTime savedAt;
  @override
  final bool isDemo;

  @override
  String toString() {
    return 'StoredToken(key: $key, token: $token, principalController: $principalController, consentTimestamp: $consentTimestamp, savedAt: $savedAt, isDemo: $isDemo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StoredToken &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.principalController, principalController) ||
                const DeepCollectionEquality()
                    .equals(other.principalController, principalController)) &&
            (identical(other.consentTimestamp, consentTimestamp) ||
                const DeepCollectionEquality()
                    .equals(other.consentTimestamp, consentTimestamp)) &&
            (identical(other.savedAt, savedAt) ||
                const DeepCollectionEquality()
                    .equals(other.savedAt, savedAt)) &&
            (identical(other.isDemo, isDemo) ||
                const DeepCollectionEquality().equals(other.isDemo, isDemo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(key) ^
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(principalController) ^
      const DeepCollectionEquality().hash(consentTimestamp) ^
      const DeepCollectionEquality().hash(savedAt) ^
      const DeepCollectionEquality().hash(isDemo);

  @override
  _$StoredTokenCopyWith<_StoredToken> get copyWith =>
      __$StoredTokenCopyWithImpl<_StoredToken>(this, _$identity);
}

abstract class _StoredToken implements StoredToken {
  const factory _StoredToken(
      {@required String key,
      @required String token,
      @required String principalController,
      @required DateTime consentTimestamp,
      @required DateTime savedAt,
      @required bool isDemo}) = _$_StoredToken;

  @override
  String get key;
  @override
  String get token;
  @override
  String get principalController;
  @override
  DateTime get consentTimestamp;
  @override
  DateTime get savedAt;
  @override
  bool get isDemo;
  @override
  _$StoredTokenCopyWith<_StoredToken> get copyWith;
}

class _$SettingsTearOff {
  const _$SettingsTearOff();

  _Settings call(
      {@required bool firstTime, @required List<int> encryptionKey}) {
    return _Settings(
      firstTime: firstTime,
      encryptionKey: encryptionKey,
    );
  }
}

// ignore: unused_element
const $Settings = _$SettingsTearOff();

mixin _$Settings {
  bool get firstTime;
  List<int> get encryptionKey;

  $SettingsCopyWith<Settings> get copyWith;
}

abstract class $SettingsCopyWith<$Res> {
  factory $SettingsCopyWith(Settings value, $Res Function(Settings) then) =
      _$SettingsCopyWithImpl<$Res>;
  $Res call({bool firstTime, List<int> encryptionKey});
}

class _$SettingsCopyWithImpl<$Res> implements $SettingsCopyWith<$Res> {
  _$SettingsCopyWithImpl(this._value, this._then);

  final Settings _value;
  // ignore: unused_field
  final $Res Function(Settings) _then;

  @override
  $Res call({
    Object firstTime = freezed,
    Object encryptionKey = freezed,
  }) {
    return _then(_value.copyWith(
      firstTime: firstTime == freezed ? _value.firstTime : firstTime as bool,
      encryptionKey: encryptionKey == freezed
          ? _value.encryptionKey
          : encryptionKey as List<int>,
    ));
  }
}

abstract class _$SettingsCopyWith<$Res> implements $SettingsCopyWith<$Res> {
  factory _$SettingsCopyWith(_Settings value, $Res Function(_Settings) then) =
      __$SettingsCopyWithImpl<$Res>;
  @override
  $Res call({bool firstTime, List<int> encryptionKey});
}

class __$SettingsCopyWithImpl<$Res> extends _$SettingsCopyWithImpl<$Res>
    implements _$SettingsCopyWith<$Res> {
  __$SettingsCopyWithImpl(_Settings _value, $Res Function(_Settings) _then)
      : super(_value, (v) => _then(v as _Settings));

  @override
  _Settings get _value => super._value as _Settings;

  @override
  $Res call({
    Object firstTime = freezed,
    Object encryptionKey = freezed,
  }) {
    return _then(_Settings(
      firstTime: firstTime == freezed ? _value.firstTime : firstTime as bool,
      encryptionKey: encryptionKey == freezed
          ? _value.encryptionKey
          : encryptionKey as List<int>,
    ));
  }
}

class _$_Settings implements _Settings {
  const _$_Settings({@required this.firstTime, @required this.encryptionKey})
      : assert(firstTime != null),
        assert(encryptionKey != null);

  @override
  final bool firstTime;
  @override
  final List<int> encryptionKey;

  @override
  String toString() {
    return 'Settings(firstTime: $firstTime, encryptionKey: $encryptionKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Settings &&
            (identical(other.firstTime, firstTime) ||
                const DeepCollectionEquality()
                    .equals(other.firstTime, firstTime)) &&
            (identical(other.encryptionKey, encryptionKey) ||
                const DeepCollectionEquality()
                    .equals(other.encryptionKey, encryptionKey)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(firstTime) ^
      const DeepCollectionEquality().hash(encryptionKey);

  @override
  _$SettingsCopyWith<_Settings> get copyWith =>
      __$SettingsCopyWithImpl<_Settings>(this, _$identity);
}

abstract class _Settings implements Settings {
  const factory _Settings(
      {@required bool firstTime,
      @required List<int> encryptionKey}) = _$_Settings;

  @override
  bool get firstTime;
  @override
  List<int> get encryptionKey;
  @override
  _$SettingsCopyWith<_Settings> get copyWith;
}
