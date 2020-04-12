// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'view_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ViewEventTearOff {
  const _$ViewEventTearOff();

  _Init init() {
    return const _Init();
  }

  _ReportError reportError() {
    return const _ReportError();
  }

  _ProcessAction processAction(ReceiptViewerAction action) {
    return _ProcessAction(
      action,
    );
  }
}

// ignore: unused_element
const $ViewEvent = _$ViewEventTearOff();

mixin _$ViewEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required Result reportError(),
    @required Result processAction(ReceiptViewerAction action),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result reportError(),
    Result processAction(ReceiptViewerAction action),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(_Init value),
    @required Result reportError(_ReportError value),
    @required Result processAction(_ProcessAction value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(_Init value),
    Result reportError(_ReportError value),
    Result processAction(_ProcessAction value),
    @required Result orElse(),
  });
}

abstract class $ViewEventCopyWith<$Res> {
  factory $ViewEventCopyWith(ViewEvent value, $Res Function(ViewEvent) then) =
      _$ViewEventCopyWithImpl<$Res>;
}

class _$ViewEventCopyWithImpl<$Res> implements $ViewEventCopyWith<$Res> {
  _$ViewEventCopyWithImpl(this._value, this._then);

  final ViewEvent _value;
  // ignore: unused_field
  final $Res Function(ViewEvent) _then;
}

abstract class _$InitCopyWith<$Res> {
  factory _$InitCopyWith(_Init value, $Res Function(_Init) then) =
      __$InitCopyWithImpl<$Res>;
}

class __$InitCopyWithImpl<$Res> extends _$ViewEventCopyWithImpl<$Res>
    implements _$InitCopyWith<$Res> {
  __$InitCopyWithImpl(_Init _value, $Res Function(_Init) _then)
      : super(_value, (v) => _then(v as _Init));

  @override
  _Init get _value => super._value as _Init;
}

class _$_Init implements _Init {
  const _$_Init();

  @override
  String toString() {
    return 'ViewEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Init);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required Result reportError(),
    @required Result processAction(ReceiptViewerAction action),
  }) {
    assert(init != null);
    assert(reportError != null);
    assert(processAction != null);
    return init();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result reportError(),
    Result processAction(ReceiptViewerAction action),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(_Init value),
    @required Result reportError(_ReportError value),
    @required Result processAction(_ProcessAction value),
  }) {
    assert(init != null);
    assert(reportError != null);
    assert(processAction != null);
    return init(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(_Init value),
    Result reportError(_ReportError value),
    Result processAction(_ProcessAction value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements ViewEvent {
  const factory _Init() = _$_Init;
}

abstract class _$ReportErrorCopyWith<$Res> {
  factory _$ReportErrorCopyWith(
          _ReportError value, $Res Function(_ReportError) then) =
      __$ReportErrorCopyWithImpl<$Res>;
}

class __$ReportErrorCopyWithImpl<$Res> extends _$ViewEventCopyWithImpl<$Res>
    implements _$ReportErrorCopyWith<$Res> {
  __$ReportErrorCopyWithImpl(
      _ReportError _value, $Res Function(_ReportError) _then)
      : super(_value, (v) => _then(v as _ReportError));

  @override
  _ReportError get _value => super._value as _ReportError;
}

class _$_ReportError implements _ReportError {
  const _$_ReportError();

  @override
  String toString() {
    return 'ViewEvent.reportError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ReportError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required Result reportError(),
    @required Result processAction(ReceiptViewerAction action),
  }) {
    assert(init != null);
    assert(reportError != null);
    assert(processAction != null);
    return reportError();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result reportError(),
    Result processAction(ReceiptViewerAction action),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (reportError != null) {
      return reportError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(_Init value),
    @required Result reportError(_ReportError value),
    @required Result processAction(_ProcessAction value),
  }) {
    assert(init != null);
    assert(reportError != null);
    assert(processAction != null);
    return reportError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(_Init value),
    Result reportError(_ReportError value),
    Result processAction(_ProcessAction value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (reportError != null) {
      return reportError(this);
    }
    return orElse();
  }
}

abstract class _ReportError implements ViewEvent {
  const factory _ReportError() = _$_ReportError;
}

abstract class _$ProcessActionCopyWith<$Res> {
  factory _$ProcessActionCopyWith(
          _ProcessAction value, $Res Function(_ProcessAction) then) =
      __$ProcessActionCopyWithImpl<$Res>;
  $Res call({ReceiptViewerAction action});

  $ReceiptViewerActionCopyWith<$Res> get action;
}

class __$ProcessActionCopyWithImpl<$Res> extends _$ViewEventCopyWithImpl<$Res>
    implements _$ProcessActionCopyWith<$Res> {
  __$ProcessActionCopyWithImpl(
      _ProcessAction _value, $Res Function(_ProcessAction) _then)
      : super(_value, (v) => _then(v as _ProcessAction));

  @override
  _ProcessAction get _value => super._value as _ProcessAction;

  @override
  $Res call({
    Object action = freezed,
  }) {
    return _then(_ProcessAction(
      action == freezed ? _value.action : action as ReceiptViewerAction,
    ));
  }

  @override
  $ReceiptViewerActionCopyWith<$Res> get action {
    if (_value.action == null) {
      return null;
    }
    return $ReceiptViewerActionCopyWith<$Res>(_value.action, (value) {
      return _then(_value.copyWith(action: value));
    });
  }
}

class _$_ProcessAction implements _ProcessAction {
  const _$_ProcessAction(this.action) : assert(action != null);

  @override
  final ReceiptViewerAction action;

  @override
  String toString() {
    return 'ViewEvent.processAction(action: $action)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProcessAction &&
            (identical(other.action, action) ||
                const DeepCollectionEquality().equals(other.action, action)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(action);

  @override
  _$ProcessActionCopyWith<_ProcessAction> get copyWith =>
      __$ProcessActionCopyWithImpl<_ProcessAction>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required Result reportError(),
    @required Result processAction(ReceiptViewerAction action),
  }) {
    assert(init != null);
    assert(reportError != null);
    assert(processAction != null);
    return processAction(action);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result reportError(),
    Result processAction(ReceiptViewerAction action),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (processAction != null) {
      return processAction(action);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(_Init value),
    @required Result reportError(_ReportError value),
    @required Result processAction(_ProcessAction value),
  }) {
    assert(init != null);
    assert(reportError != null);
    assert(processAction != null);
    return processAction(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(_Init value),
    Result reportError(_ReportError value),
    Result processAction(_ProcessAction value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (processAction != null) {
      return processAction(this);
    }
    return orElse();
  }
}

abstract class _ProcessAction implements ViewEvent {
  const factory _ProcessAction(ReceiptViewerAction action) = _$_ProcessAction;

  ReceiptViewerAction get action;
  _$ProcessActionCopyWith<_ProcessAction> get copyWith;
}

class _$ViewStateTearOff {
  const _$ViewStateTearOff();

  _Loading loading() {
    return const _Loading();
  }

  _Ready ready({@required ConsentReceipt receipt, @required String token}) {
    return _Ready(
      receipt: receipt,
      token: token,
    );
  }

  _Invalid invalid(
      {@required String token,
      @required String error,
      @required StackTrace stackTrace}) {
    return _Invalid(
      token: token,
      error: error,
      stackTrace: stackTrace,
    );
  }
}

// ignore: unused_element
const $ViewState = _$ViewStateTearOff();

mixin _$ViewState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required
        Result ready(@required ConsentReceipt receipt, @required String token),
    @required
        Result invalid(@required String token, @required String error,
            @required StackTrace stackTrace),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result ready(@required ConsentReceipt receipt, @required String token),
    Result invalid(@required String token, @required String error,
        @required StackTrace stackTrace),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(_Loading value),
    @required Result ready(_Ready value),
    @required Result invalid(_Invalid value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(_Loading value),
    Result ready(_Ready value),
    Result invalid(_Invalid value),
    @required Result orElse(),
  });
}

abstract class $ViewStateCopyWith<$Res> {
  factory $ViewStateCopyWith(ViewState value, $Res Function(ViewState) then) =
      _$ViewStateCopyWithImpl<$Res>;
}

class _$ViewStateCopyWithImpl<$Res> implements $ViewStateCopyWith<$Res> {
  _$ViewStateCopyWithImpl(this._value, this._then);

  final ViewState _value;
  // ignore: unused_field
  final $Res Function(ViewState) _then;
}

abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

class __$LoadingCopyWithImpl<$Res> extends _$ViewStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'ViewState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required
        Result ready(@required ConsentReceipt receipt, @required String token),
    @required
        Result invalid(@required String token, @required String error,
            @required StackTrace stackTrace),
  }) {
    assert(loading != null);
    assert(ready != null);
    assert(invalid != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result ready(@required ConsentReceipt receipt, @required String token),
    Result invalid(@required String token, @required String error,
        @required StackTrace stackTrace),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(_Loading value),
    @required Result ready(_Ready value),
    @required Result invalid(_Invalid value),
  }) {
    assert(loading != null);
    assert(ready != null);
    assert(invalid != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(_Loading value),
    Result ready(_Ready value),
    Result invalid(_Invalid value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ViewState {
  const factory _Loading() = _$_Loading;
}

abstract class _$ReadyCopyWith<$Res> {
  factory _$ReadyCopyWith(_Ready value, $Res Function(_Ready) then) =
      __$ReadyCopyWithImpl<$Res>;
  $Res call({ConsentReceipt receipt, String token});

  $ConsentReceiptCopyWith<$Res> get receipt;
}

class __$ReadyCopyWithImpl<$Res> extends _$ViewStateCopyWithImpl<$Res>
    implements _$ReadyCopyWith<$Res> {
  __$ReadyCopyWithImpl(_Ready _value, $Res Function(_Ready) _then)
      : super(_value, (v) => _then(v as _Ready));

  @override
  _Ready get _value => super._value as _Ready;

  @override
  $Res call({
    Object receipt = freezed,
    Object token = freezed,
  }) {
    return _then(_Ready(
      receipt: receipt == freezed ? _value.receipt : receipt as ConsentReceipt,
      token: token == freezed ? _value.token : token as String,
    ));
  }

  @override
  $ConsentReceiptCopyWith<$Res> get receipt {
    if (_value.receipt == null) {
      return null;
    }
    return $ConsentReceiptCopyWith<$Res>(_value.receipt, (value) {
      return _then(_value.copyWith(receipt: value));
    });
  }
}

class _$_Ready implements _Ready {
  const _$_Ready({@required this.receipt, @required this.token})
      : assert(receipt != null),
        assert(token != null);

  @override
  final ConsentReceipt receipt;
  @override
  final String token;

  @override
  String toString() {
    return 'ViewState.ready(receipt: $receipt, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Ready &&
            (identical(other.receipt, receipt) ||
                const DeepCollectionEquality()
                    .equals(other.receipt, receipt)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(receipt) ^
      const DeepCollectionEquality().hash(token);

  @override
  _$ReadyCopyWith<_Ready> get copyWith =>
      __$ReadyCopyWithImpl<_Ready>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required
        Result ready(@required ConsentReceipt receipt, @required String token),
    @required
        Result invalid(@required String token, @required String error,
            @required StackTrace stackTrace),
  }) {
    assert(loading != null);
    assert(ready != null);
    assert(invalid != null);
    return ready(receipt, token);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result ready(@required ConsentReceipt receipt, @required String token),
    Result invalid(@required String token, @required String error,
        @required StackTrace stackTrace),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (ready != null) {
      return ready(receipt, token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(_Loading value),
    @required Result ready(_Ready value),
    @required Result invalid(_Invalid value),
  }) {
    assert(loading != null);
    assert(ready != null);
    assert(invalid != null);
    return ready(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(_Loading value),
    Result ready(_Ready value),
    Result invalid(_Invalid value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (ready != null) {
      return ready(this);
    }
    return orElse();
  }
}

abstract class _Ready implements ViewState {
  const factory _Ready(
      {@required ConsentReceipt receipt, @required String token}) = _$_Ready;

  ConsentReceipt get receipt;
  String get token;
  _$ReadyCopyWith<_Ready> get copyWith;
}

abstract class _$InvalidCopyWith<$Res> {
  factory _$InvalidCopyWith(_Invalid value, $Res Function(_Invalid) then) =
      __$InvalidCopyWithImpl<$Res>;
  $Res call({String token, String error, StackTrace stackTrace});
}

class __$InvalidCopyWithImpl<$Res> extends _$ViewStateCopyWithImpl<$Res>
    implements _$InvalidCopyWith<$Res> {
  __$InvalidCopyWithImpl(_Invalid _value, $Res Function(_Invalid) _then)
      : super(_value, (v) => _then(v as _Invalid));

  @override
  _Invalid get _value => super._value as _Invalid;

  @override
  $Res call({
    Object token = freezed,
    Object error = freezed,
    Object stackTrace = freezed,
  }) {
    return _then(_Invalid(
      token: token == freezed ? _value.token : token as String,
      error: error == freezed ? _value.error : error as String,
      stackTrace:
          stackTrace == freezed ? _value.stackTrace : stackTrace as StackTrace,
    ));
  }
}

class _$_Invalid implements _Invalid {
  const _$_Invalid(
      {@required this.token, @required this.error, @required this.stackTrace})
      : assert(token != null),
        assert(error != null),
        assert(stackTrace != null);

  @override
  final String token;
  @override
  final String error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'ViewState.invalid(token: $token, error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Invalid &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.stackTrace, stackTrace) ||
                const DeepCollectionEquality()
                    .equals(other.stackTrace, stackTrace)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(stackTrace);

  @override
  _$InvalidCopyWith<_Invalid> get copyWith =>
      __$InvalidCopyWithImpl<_Invalid>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required
        Result ready(@required ConsentReceipt receipt, @required String token),
    @required
        Result invalid(@required String token, @required String error,
            @required StackTrace stackTrace),
  }) {
    assert(loading != null);
    assert(ready != null);
    assert(invalid != null);
    return invalid(token, error, stackTrace);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result ready(@required ConsentReceipt receipt, @required String token),
    Result invalid(@required String token, @required String error,
        @required StackTrace stackTrace),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalid != null) {
      return invalid(token, error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(_Loading value),
    @required Result ready(_Ready value),
    @required Result invalid(_Invalid value),
  }) {
    assert(loading != null);
    assert(ready != null);
    assert(invalid != null);
    return invalid(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(_Loading value),
    Result ready(_Ready value),
    Result invalid(_Invalid value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalid != null) {
      return invalid(this);
    }
    return orElse();
  }
}

abstract class _Invalid implements ViewState {
  const factory _Invalid(
      {@required String token,
      @required String error,
      @required StackTrace stackTrace}) = _$_Invalid;

  String get token;
  String get error;
  StackTrace get stackTrace;
  _$InvalidCopyWith<_Invalid> get copyWith;
}
