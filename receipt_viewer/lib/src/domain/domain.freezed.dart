// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'domain.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ConsentReceipt _$ConsentReceiptFromJson(Map<String, dynamic> json) {
  return _ConsentReceipt.fromJson(json);
}

class _$ConsentReceiptTearOff {
  const _$ConsentReceiptTearOff();

  _ConsentReceipt call(
      {String version,
      String jurisdiction,
      int consentTimestamp,
      String collectionMethod,
      String consentReceiptID,
      String language,
      String piiPrincipalId,
      String policyUrl,
      List<PiiController> controllers,
      List<PrivacyPolicyService> services,
      bool sensitive,
      List<String> spiCat}) {
    return _ConsentReceipt(
      version: version,
      jurisdiction: jurisdiction,
      consentTimestamp: consentTimestamp,
      collectionMethod: collectionMethod,
      consentReceiptID: consentReceiptID,
      language: language,
      piiPrincipalId: piiPrincipalId,
      policyUrl: policyUrl,
      controllers: controllers,
      services: services,
      sensitive: sensitive,
      spiCat: spiCat,
    );
  }
}

// ignore: unused_element
const $ConsentReceipt = _$ConsentReceiptTearOff();

mixin _$ConsentReceipt {
  String get version;
  String get jurisdiction;
  int get consentTimestamp;
  String get collectionMethod;
  String get consentReceiptID;
  String get language;
  String get piiPrincipalId;
  String get policyUrl;
  List<PiiController> get controllers;
  List<PrivacyPolicyService> get services;
  bool get sensitive;
  List<String> get spiCat;

  Map<String, dynamic> toJson();
  $ConsentReceiptCopyWith<ConsentReceipt> get copyWith;
}

abstract class $ConsentReceiptCopyWith<$Res> {
  factory $ConsentReceiptCopyWith(
          ConsentReceipt value, $Res Function(ConsentReceipt) then) =
      _$ConsentReceiptCopyWithImpl<$Res>;
  $Res call(
      {String version,
      String jurisdiction,
      int consentTimestamp,
      String collectionMethod,
      String consentReceiptID,
      String language,
      String piiPrincipalId,
      String policyUrl,
      List<PiiController> controllers,
      List<PrivacyPolicyService> services,
      bool sensitive,
      List<String> spiCat});
}

class _$ConsentReceiptCopyWithImpl<$Res>
    implements $ConsentReceiptCopyWith<$Res> {
  _$ConsentReceiptCopyWithImpl(this._value, this._then);

  final ConsentReceipt _value;
  // ignore: unused_field
  final $Res Function(ConsentReceipt) _then;

  @override
  $Res call({
    Object version = freezed,
    Object jurisdiction = freezed,
    Object consentTimestamp = freezed,
    Object collectionMethod = freezed,
    Object consentReceiptID = freezed,
    Object language = freezed,
    Object piiPrincipalId = freezed,
    Object policyUrl = freezed,
    Object controllers = freezed,
    Object services = freezed,
    Object sensitive = freezed,
    Object spiCat = freezed,
  }) {
    return _then(_value.copyWith(
      version: version == freezed ? _value.version : version as String,
      jurisdiction: jurisdiction == freezed
          ? _value.jurisdiction
          : jurisdiction as String,
      consentTimestamp: consentTimestamp == freezed
          ? _value.consentTimestamp
          : consentTimestamp as int,
      collectionMethod: collectionMethod == freezed
          ? _value.collectionMethod
          : collectionMethod as String,
      consentReceiptID: consentReceiptID == freezed
          ? _value.consentReceiptID
          : consentReceiptID as String,
      language: language == freezed ? _value.language : language as String,
      piiPrincipalId: piiPrincipalId == freezed
          ? _value.piiPrincipalId
          : piiPrincipalId as String,
      policyUrl: policyUrl == freezed ? _value.policyUrl : policyUrl as String,
      controllers: controllers == freezed
          ? _value.controllers
          : controllers as List<PiiController>,
      services: services == freezed
          ? _value.services
          : services as List<PrivacyPolicyService>,
      sensitive: sensitive == freezed ? _value.sensitive : sensitive as bool,
      spiCat: spiCat == freezed ? _value.spiCat : spiCat as List<String>,
    ));
  }
}

abstract class _$ConsentReceiptCopyWith<$Res>
    implements $ConsentReceiptCopyWith<$Res> {
  factory _$ConsentReceiptCopyWith(
          _ConsentReceipt value, $Res Function(_ConsentReceipt) then) =
      __$ConsentReceiptCopyWithImpl<$Res>;
  @override
  $Res call(
      {String version,
      String jurisdiction,
      int consentTimestamp,
      String collectionMethod,
      String consentReceiptID,
      String language,
      String piiPrincipalId,
      String policyUrl,
      List<PiiController> controllers,
      List<PrivacyPolicyService> services,
      bool sensitive,
      List<String> spiCat});
}

class __$ConsentReceiptCopyWithImpl<$Res>
    extends _$ConsentReceiptCopyWithImpl<$Res>
    implements _$ConsentReceiptCopyWith<$Res> {
  __$ConsentReceiptCopyWithImpl(
      _ConsentReceipt _value, $Res Function(_ConsentReceipt) _then)
      : super(_value, (v) => _then(v as _ConsentReceipt));

  @override
  _ConsentReceipt get _value => super._value as _ConsentReceipt;

  @override
  $Res call({
    Object version = freezed,
    Object jurisdiction = freezed,
    Object consentTimestamp = freezed,
    Object collectionMethod = freezed,
    Object consentReceiptID = freezed,
    Object language = freezed,
    Object piiPrincipalId = freezed,
    Object policyUrl = freezed,
    Object controllers = freezed,
    Object services = freezed,
    Object sensitive = freezed,
    Object spiCat = freezed,
  }) {
    return _then(_ConsentReceipt(
      version: version == freezed ? _value.version : version as String,
      jurisdiction: jurisdiction == freezed
          ? _value.jurisdiction
          : jurisdiction as String,
      consentTimestamp: consentTimestamp == freezed
          ? _value.consentTimestamp
          : consentTimestamp as int,
      collectionMethod: collectionMethod == freezed
          ? _value.collectionMethod
          : collectionMethod as String,
      consentReceiptID: consentReceiptID == freezed
          ? _value.consentReceiptID
          : consentReceiptID as String,
      language: language == freezed ? _value.language : language as String,
      piiPrincipalId: piiPrincipalId == freezed
          ? _value.piiPrincipalId
          : piiPrincipalId as String,
      policyUrl: policyUrl == freezed ? _value.policyUrl : policyUrl as String,
      controllers: controllers == freezed
          ? _value.controllers
          : controllers as List<PiiController>,
      services: services == freezed
          ? _value.services
          : services as List<PrivacyPolicyService>,
      sensitive: sensitive == freezed ? _value.sensitive : sensitive as bool,
      spiCat: spiCat == freezed ? _value.spiCat : spiCat as List<String>,
    ));
  }
}

@JsonSerializable()
class _$_ConsentReceipt implements _ConsentReceipt {
  const _$_ConsentReceipt(
      {this.version,
      this.jurisdiction,
      this.consentTimestamp,
      this.collectionMethod,
      this.consentReceiptID,
      this.language,
      this.piiPrincipalId,
      this.policyUrl,
      this.controllers,
      this.services,
      this.sensitive,
      this.spiCat});

  factory _$_ConsentReceipt.fromJson(Map<String, dynamic> json) =>
      _$_$_ConsentReceiptFromJson(json);

  @override
  final String version;
  @override
  final String jurisdiction;
  @override
  final int consentTimestamp;
  @override
  final String collectionMethod;
  @override
  final String consentReceiptID;
  @override
  final String language;
  @override
  final String piiPrincipalId;
  @override
  final String policyUrl;
  @override
  final List<PiiController> controllers;
  @override
  final List<PrivacyPolicyService> services;
  @override
  final bool sensitive;
  @override
  final List<String> spiCat;

  @override
  String toString() {
    return 'ConsentReceipt(version: $version, jurisdiction: $jurisdiction, consentTimestamp: $consentTimestamp, collectionMethod: $collectionMethod, consentReceiptID: $consentReceiptID, language: $language, piiPrincipalId: $piiPrincipalId, policyUrl: $policyUrl, controllers: $controllers, services: $services, sensitive: $sensitive, spiCat: $spiCat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ConsentReceipt &&
            (identical(other.version, version) ||
                const DeepCollectionEquality()
                    .equals(other.version, version)) &&
            (identical(other.jurisdiction, jurisdiction) ||
                const DeepCollectionEquality()
                    .equals(other.jurisdiction, jurisdiction)) &&
            (identical(other.consentTimestamp, consentTimestamp) ||
                const DeepCollectionEquality()
                    .equals(other.consentTimestamp, consentTimestamp)) &&
            (identical(other.collectionMethod, collectionMethod) ||
                const DeepCollectionEquality()
                    .equals(other.collectionMethod, collectionMethod)) &&
            (identical(other.consentReceiptID, consentReceiptID) ||
                const DeepCollectionEquality()
                    .equals(other.consentReceiptID, consentReceiptID)) &&
            (identical(other.language, language) ||
                const DeepCollectionEquality()
                    .equals(other.language, language)) &&
            (identical(other.piiPrincipalId, piiPrincipalId) ||
                const DeepCollectionEquality()
                    .equals(other.piiPrincipalId, piiPrincipalId)) &&
            (identical(other.policyUrl, policyUrl) ||
                const DeepCollectionEquality()
                    .equals(other.policyUrl, policyUrl)) &&
            (identical(other.controllers, controllers) ||
                const DeepCollectionEquality()
                    .equals(other.controllers, controllers)) &&
            (identical(other.services, services) ||
                const DeepCollectionEquality()
                    .equals(other.services, services)) &&
            (identical(other.sensitive, sensitive) ||
                const DeepCollectionEquality()
                    .equals(other.sensitive, sensitive)) &&
            (identical(other.spiCat, spiCat) ||
                const DeepCollectionEquality().equals(other.spiCat, spiCat)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(version) ^
      const DeepCollectionEquality().hash(jurisdiction) ^
      const DeepCollectionEquality().hash(consentTimestamp) ^
      const DeepCollectionEquality().hash(collectionMethod) ^
      const DeepCollectionEquality().hash(consentReceiptID) ^
      const DeepCollectionEquality().hash(language) ^
      const DeepCollectionEquality().hash(piiPrincipalId) ^
      const DeepCollectionEquality().hash(policyUrl) ^
      const DeepCollectionEquality().hash(controllers) ^
      const DeepCollectionEquality().hash(services) ^
      const DeepCollectionEquality().hash(sensitive) ^
      const DeepCollectionEquality().hash(spiCat);

  @override
  _$ConsentReceiptCopyWith<_ConsentReceipt> get copyWith =>
      __$ConsentReceiptCopyWithImpl<_ConsentReceipt>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ConsentReceiptToJson(this);
  }
}

abstract class _ConsentReceipt implements ConsentReceipt {
  const factory _ConsentReceipt(
      {String version,
      String jurisdiction,
      int consentTimestamp,
      String collectionMethod,
      String consentReceiptID,
      String language,
      String piiPrincipalId,
      String policyUrl,
      List<PiiController> controllers,
      List<PrivacyPolicyService> services,
      bool sensitive,
      List<String> spiCat}) = _$_ConsentReceipt;

  factory _ConsentReceipt.fromJson(Map<String, dynamic> json) =
      _$_ConsentReceipt.fromJson;

  @override
  String get version;
  @override
  String get jurisdiction;
  @override
  int get consentTimestamp;
  @override
  String get collectionMethod;
  @override
  String get consentReceiptID;
  @override
  String get language;
  @override
  String get piiPrincipalId;
  @override
  String get policyUrl;
  @override
  List<PiiController> get controllers;
  @override
  List<PrivacyPolicyService> get services;
  @override
  bool get sensitive;
  @override
  List<String> get spiCat;
  @override
  _$ConsentReceiptCopyWith<_ConsentReceipt> get copyWith;
}

PiiController _$PiiControllerFromJson(Map<String, dynamic> json) {
  return _PiiController.fromJson(json);
}

class _$PiiControllerTearOff {
  const _$PiiControllerTearOff();

  _PiiController call(
      {String piiController,
      String url,
      PiiControllerAddress address,
      String contact,
      String email,
      String org,
      String phone,
      bool onBehalf}) {
    return _PiiController(
      piiController: piiController,
      url: url,
      address: address,
      contact: contact,
      email: email,
      org: org,
      phone: phone,
      onBehalf: onBehalf,
    );
  }
}

// ignore: unused_element
const $PiiController = _$PiiControllerTearOff();

mixin _$PiiController {
  String get piiController;
  String get url;
  PiiControllerAddress get address;
  String get contact;
  String get email;
  String get org;
  String get phone;
  bool get onBehalf;

  Map<String, dynamic> toJson();
  $PiiControllerCopyWith<PiiController> get copyWith;
}

abstract class $PiiControllerCopyWith<$Res> {
  factory $PiiControllerCopyWith(
          PiiController value, $Res Function(PiiController) then) =
      _$PiiControllerCopyWithImpl<$Res>;
  $Res call(
      {String piiController,
      String url,
      PiiControllerAddress address,
      String contact,
      String email,
      String org,
      String phone,
      bool onBehalf});

  $PiiControllerAddressCopyWith<$Res> get address;
}

class _$PiiControllerCopyWithImpl<$Res>
    implements $PiiControllerCopyWith<$Res> {
  _$PiiControllerCopyWithImpl(this._value, this._then);

  final PiiController _value;
  // ignore: unused_field
  final $Res Function(PiiController) _then;

  @override
  $Res call({
    Object piiController = freezed,
    Object url = freezed,
    Object address = freezed,
    Object contact = freezed,
    Object email = freezed,
    Object org = freezed,
    Object phone = freezed,
    Object onBehalf = freezed,
  }) {
    return _then(_value.copyWith(
      piiController: piiController == freezed
          ? _value.piiController
          : piiController as String,
      url: url == freezed ? _value.url : url as String,
      address:
          address == freezed ? _value.address : address as PiiControllerAddress,
      contact: contact == freezed ? _value.contact : contact as String,
      email: email == freezed ? _value.email : email as String,
      org: org == freezed ? _value.org : org as String,
      phone: phone == freezed ? _value.phone : phone as String,
      onBehalf: onBehalf == freezed ? _value.onBehalf : onBehalf as bool,
    ));
  }

  @override
  $PiiControllerAddressCopyWith<$Res> get address {
    if (_value.address == null) {
      return null;
    }
    return $PiiControllerAddressCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value));
    });
  }
}

abstract class _$PiiControllerCopyWith<$Res>
    implements $PiiControllerCopyWith<$Res> {
  factory _$PiiControllerCopyWith(
          _PiiController value, $Res Function(_PiiController) then) =
      __$PiiControllerCopyWithImpl<$Res>;
  @override
  $Res call(
      {String piiController,
      String url,
      PiiControllerAddress address,
      String contact,
      String email,
      String org,
      String phone,
      bool onBehalf});

  @override
  $PiiControllerAddressCopyWith<$Res> get address;
}

class __$PiiControllerCopyWithImpl<$Res>
    extends _$PiiControllerCopyWithImpl<$Res>
    implements _$PiiControllerCopyWith<$Res> {
  __$PiiControllerCopyWithImpl(
      _PiiController _value, $Res Function(_PiiController) _then)
      : super(_value, (v) => _then(v as _PiiController));

  @override
  _PiiController get _value => super._value as _PiiController;

  @override
  $Res call({
    Object piiController = freezed,
    Object url = freezed,
    Object address = freezed,
    Object contact = freezed,
    Object email = freezed,
    Object org = freezed,
    Object phone = freezed,
    Object onBehalf = freezed,
  }) {
    return _then(_PiiController(
      piiController: piiController == freezed
          ? _value.piiController
          : piiController as String,
      url: url == freezed ? _value.url : url as String,
      address:
          address == freezed ? _value.address : address as PiiControllerAddress,
      contact: contact == freezed ? _value.contact : contact as String,
      email: email == freezed ? _value.email : email as String,
      org: org == freezed ? _value.org : org as String,
      phone: phone == freezed ? _value.phone : phone as String,
      onBehalf: onBehalf == freezed ? _value.onBehalf : onBehalf as bool,
    ));
  }
}

@JsonSerializable()
class _$_PiiController implements _PiiController {
  const _$_PiiController(
      {this.piiController,
      this.url,
      this.address,
      this.contact,
      this.email,
      this.org,
      this.phone,
      this.onBehalf});

  factory _$_PiiController.fromJson(Map<String, dynamic> json) =>
      _$_$_PiiControllerFromJson(json);

  @override
  final String piiController;
  @override
  final String url;
  @override
  final PiiControllerAddress address;
  @override
  final String contact;
  @override
  final String email;
  @override
  final String org;
  @override
  final String phone;
  @override
  final bool onBehalf;

  @override
  String toString() {
    return 'PiiController(piiController: $piiController, url: $url, address: $address, contact: $contact, email: $email, org: $org, phone: $phone, onBehalf: $onBehalf)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PiiController &&
            (identical(other.piiController, piiController) ||
                const DeepCollectionEquality()
                    .equals(other.piiController, piiController)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.contact, contact) ||
                const DeepCollectionEquality()
                    .equals(other.contact, contact)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.org, org) ||
                const DeepCollectionEquality().equals(other.org, org)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.onBehalf, onBehalf) ||
                const DeepCollectionEquality()
                    .equals(other.onBehalf, onBehalf)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(piiController) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(contact) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(org) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(onBehalf);

  @override
  _$PiiControllerCopyWith<_PiiController> get copyWith =>
      __$PiiControllerCopyWithImpl<_PiiController>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PiiControllerToJson(this);
  }
}

abstract class _PiiController implements PiiController {
  const factory _PiiController(
      {String piiController,
      String url,
      PiiControllerAddress address,
      String contact,
      String email,
      String org,
      String phone,
      bool onBehalf}) = _$_PiiController;

  factory _PiiController.fromJson(Map<String, dynamic> json) =
      _$_PiiController.fromJson;

  @override
  String get piiController;
  @override
  String get url;
  @override
  PiiControllerAddress get address;
  @override
  String get contact;
  @override
  String get email;
  @override
  String get org;
  @override
  String get phone;
  @override
  bool get onBehalf;
  @override
  _$PiiControllerCopyWith<_PiiController> get copyWith;
}

PiiControllerAddress _$PiiControllerAddressFromJson(Map<String, dynamic> json) {
  return _PiiControllerAddress.fromJson(json);
}

class _$PiiControllerAddressTearOff {
  const _$PiiControllerAddressTearOff();

  _PiiControllerAddress call(
      {String streetAddress,
      String postalCode,
      String addressLocality,
      String addressRegion,
      String addressCountry}) {
    return _PiiControllerAddress(
      streetAddress: streetAddress,
      postalCode: postalCode,
      addressLocality: addressLocality,
      addressRegion: addressRegion,
      addressCountry: addressCountry,
    );
  }
}

// ignore: unused_element
const $PiiControllerAddress = _$PiiControllerAddressTearOff();

mixin _$PiiControllerAddress {
  String get streetAddress;
  String get postalCode;
  String get addressLocality;
  String get addressRegion;
  String get addressCountry;

  Map<String, dynamic> toJson();
  $PiiControllerAddressCopyWith<PiiControllerAddress> get copyWith;
}

abstract class $PiiControllerAddressCopyWith<$Res> {
  factory $PiiControllerAddressCopyWith(PiiControllerAddress value,
          $Res Function(PiiControllerAddress) then) =
      _$PiiControllerAddressCopyWithImpl<$Res>;
  $Res call(
      {String streetAddress,
      String postalCode,
      String addressLocality,
      String addressRegion,
      String addressCountry});
}

class _$PiiControllerAddressCopyWithImpl<$Res>
    implements $PiiControllerAddressCopyWith<$Res> {
  _$PiiControllerAddressCopyWithImpl(this._value, this._then);

  final PiiControllerAddress _value;
  // ignore: unused_field
  final $Res Function(PiiControllerAddress) _then;

  @override
  $Res call({
    Object streetAddress = freezed,
    Object postalCode = freezed,
    Object addressLocality = freezed,
    Object addressRegion = freezed,
    Object addressCountry = freezed,
  }) {
    return _then(_value.copyWith(
      streetAddress: streetAddress == freezed
          ? _value.streetAddress
          : streetAddress as String,
      postalCode:
          postalCode == freezed ? _value.postalCode : postalCode as String,
      addressLocality: addressLocality == freezed
          ? _value.addressLocality
          : addressLocality as String,
      addressRegion: addressRegion == freezed
          ? _value.addressRegion
          : addressRegion as String,
      addressCountry: addressCountry == freezed
          ? _value.addressCountry
          : addressCountry as String,
    ));
  }
}

abstract class _$PiiControllerAddressCopyWith<$Res>
    implements $PiiControllerAddressCopyWith<$Res> {
  factory _$PiiControllerAddressCopyWith(_PiiControllerAddress value,
          $Res Function(_PiiControllerAddress) then) =
      __$PiiControllerAddressCopyWithImpl<$Res>;
  @override
  $Res call(
      {String streetAddress,
      String postalCode,
      String addressLocality,
      String addressRegion,
      String addressCountry});
}

class __$PiiControllerAddressCopyWithImpl<$Res>
    extends _$PiiControllerAddressCopyWithImpl<$Res>
    implements _$PiiControllerAddressCopyWith<$Res> {
  __$PiiControllerAddressCopyWithImpl(
      _PiiControllerAddress _value, $Res Function(_PiiControllerAddress) _then)
      : super(_value, (v) => _then(v as _PiiControllerAddress));

  @override
  _PiiControllerAddress get _value => super._value as _PiiControllerAddress;

  @override
  $Res call({
    Object streetAddress = freezed,
    Object postalCode = freezed,
    Object addressLocality = freezed,
    Object addressRegion = freezed,
    Object addressCountry = freezed,
  }) {
    return _then(_PiiControllerAddress(
      streetAddress: streetAddress == freezed
          ? _value.streetAddress
          : streetAddress as String,
      postalCode:
          postalCode == freezed ? _value.postalCode : postalCode as String,
      addressLocality: addressLocality == freezed
          ? _value.addressLocality
          : addressLocality as String,
      addressRegion: addressRegion == freezed
          ? _value.addressRegion
          : addressRegion as String,
      addressCountry: addressCountry == freezed
          ? _value.addressCountry
          : addressCountry as String,
    ));
  }
}

@JsonSerializable()
class _$_PiiControllerAddress implements _PiiControllerAddress {
  const _$_PiiControllerAddress(
      {this.streetAddress,
      this.postalCode,
      this.addressLocality,
      this.addressRegion,
      this.addressCountry});

  factory _$_PiiControllerAddress.fromJson(Map<String, dynamic> json) =>
      _$_$_PiiControllerAddressFromJson(json);

  @override
  final String streetAddress;
  @override
  final String postalCode;
  @override
  final String addressLocality;
  @override
  final String addressRegion;
  @override
  final String addressCountry;

  @override
  String toString() {
    return 'PiiControllerAddress(streetAddress: $streetAddress, postalCode: $postalCode, addressLocality: $addressLocality, addressRegion: $addressRegion, addressCountry: $addressCountry)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PiiControllerAddress &&
            (identical(other.streetAddress, streetAddress) ||
                const DeepCollectionEquality()
                    .equals(other.streetAddress, streetAddress)) &&
            (identical(other.postalCode, postalCode) ||
                const DeepCollectionEquality()
                    .equals(other.postalCode, postalCode)) &&
            (identical(other.addressLocality, addressLocality) ||
                const DeepCollectionEquality()
                    .equals(other.addressLocality, addressLocality)) &&
            (identical(other.addressRegion, addressRegion) ||
                const DeepCollectionEquality()
                    .equals(other.addressRegion, addressRegion)) &&
            (identical(other.addressCountry, addressCountry) ||
                const DeepCollectionEquality()
                    .equals(other.addressCountry, addressCountry)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(streetAddress) ^
      const DeepCollectionEquality().hash(postalCode) ^
      const DeepCollectionEquality().hash(addressLocality) ^
      const DeepCollectionEquality().hash(addressRegion) ^
      const DeepCollectionEquality().hash(addressCountry);

  @override
  _$PiiControllerAddressCopyWith<_PiiControllerAddress> get copyWith =>
      __$PiiControllerAddressCopyWithImpl<_PiiControllerAddress>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PiiControllerAddressToJson(this);
  }
}

abstract class _PiiControllerAddress implements PiiControllerAddress {
  const factory _PiiControllerAddress(
      {String streetAddress,
      String postalCode,
      String addressLocality,
      String addressRegion,
      String addressCountry}) = _$_PiiControllerAddress;

  factory _PiiControllerAddress.fromJson(Map<String, dynamic> json) =
      _$_PiiControllerAddress.fromJson;

  @override
  String get streetAddress;
  @override
  String get postalCode;
  @override
  String get addressLocality;
  @override
  String get addressRegion;
  @override
  String get addressCountry;
  @override
  _$PiiControllerAddressCopyWith<_PiiControllerAddress> get copyWith;
}

PrivacyPolicyService _$PrivacyPolicyServiceFromJson(Map<String, dynamic> json) {
  return _PrivacyPolicyService.fromJson(json);
}

class _$PrivacyPolicyServiceTearOff {
  const _$PrivacyPolicyServiceTearOff();

  _PrivacyPolicyService call(
      {String service, List<PrivacyPolicyServicePurpose> purposes}) {
    return _PrivacyPolicyService(
      service: service,
      purposes: purposes,
    );
  }
}

// ignore: unused_element
const $PrivacyPolicyService = _$PrivacyPolicyServiceTearOff();

mixin _$PrivacyPolicyService {
  String get service;
  List<PrivacyPolicyServicePurpose> get purposes;

  Map<String, dynamic> toJson();
  $PrivacyPolicyServiceCopyWith<PrivacyPolicyService> get copyWith;
}

abstract class $PrivacyPolicyServiceCopyWith<$Res> {
  factory $PrivacyPolicyServiceCopyWith(PrivacyPolicyService value,
          $Res Function(PrivacyPolicyService) then) =
      _$PrivacyPolicyServiceCopyWithImpl<$Res>;
  $Res call({String service, List<PrivacyPolicyServicePurpose> purposes});
}

class _$PrivacyPolicyServiceCopyWithImpl<$Res>
    implements $PrivacyPolicyServiceCopyWith<$Res> {
  _$PrivacyPolicyServiceCopyWithImpl(this._value, this._then);

  final PrivacyPolicyService _value;
  // ignore: unused_field
  final $Res Function(PrivacyPolicyService) _then;

  @override
  $Res call({
    Object service = freezed,
    Object purposes = freezed,
  }) {
    return _then(_value.copyWith(
      service: service == freezed ? _value.service : service as String,
      purposes: purposes == freezed
          ? _value.purposes
          : purposes as List<PrivacyPolicyServicePurpose>,
    ));
  }
}

abstract class _$PrivacyPolicyServiceCopyWith<$Res>
    implements $PrivacyPolicyServiceCopyWith<$Res> {
  factory _$PrivacyPolicyServiceCopyWith(_PrivacyPolicyService value,
          $Res Function(_PrivacyPolicyService) then) =
      __$PrivacyPolicyServiceCopyWithImpl<$Res>;
  @override
  $Res call({String service, List<PrivacyPolicyServicePurpose> purposes});
}

class __$PrivacyPolicyServiceCopyWithImpl<$Res>
    extends _$PrivacyPolicyServiceCopyWithImpl<$Res>
    implements _$PrivacyPolicyServiceCopyWith<$Res> {
  __$PrivacyPolicyServiceCopyWithImpl(
      _PrivacyPolicyService _value, $Res Function(_PrivacyPolicyService) _then)
      : super(_value, (v) => _then(v as _PrivacyPolicyService));

  @override
  _PrivacyPolicyService get _value => super._value as _PrivacyPolicyService;

  @override
  $Res call({
    Object service = freezed,
    Object purposes = freezed,
  }) {
    return _then(_PrivacyPolicyService(
      service: service == freezed ? _value.service : service as String,
      purposes: purposes == freezed
          ? _value.purposes
          : purposes as List<PrivacyPolicyServicePurpose>,
    ));
  }
}

@JsonSerializable()
class _$_PrivacyPolicyService implements _PrivacyPolicyService {
  const _$_PrivacyPolicyService({this.service, this.purposes});

  factory _$_PrivacyPolicyService.fromJson(Map<String, dynamic> json) =>
      _$_$_PrivacyPolicyServiceFromJson(json);

  @override
  final String service;
  @override
  final List<PrivacyPolicyServicePurpose> purposes;

  @override
  String toString() {
    return 'PrivacyPolicyService(service: $service, purposes: $purposes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PrivacyPolicyService &&
            (identical(other.service, service) ||
                const DeepCollectionEquality()
                    .equals(other.service, service)) &&
            (identical(other.purposes, purposes) ||
                const DeepCollectionEquality()
                    .equals(other.purposes, purposes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(service) ^
      const DeepCollectionEquality().hash(purposes);

  @override
  _$PrivacyPolicyServiceCopyWith<_PrivacyPolicyService> get copyWith =>
      __$PrivacyPolicyServiceCopyWithImpl<_PrivacyPolicyService>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PrivacyPolicyServiceToJson(this);
  }
}

abstract class _PrivacyPolicyService implements PrivacyPolicyService {
  const factory _PrivacyPolicyService(
      {String service,
      List<PrivacyPolicyServicePurpose> purposes}) = _$_PrivacyPolicyService;

  factory _PrivacyPolicyService.fromJson(Map<String, dynamic> json) =
      _$_PrivacyPolicyService.fromJson;

  @override
  String get service;
  @override
  List<PrivacyPolicyServicePurpose> get purposes;
  @override
  _$PrivacyPolicyServiceCopyWith<_PrivacyPolicyService> get copyWith;
}

PrivacyPolicyServicePurpose _$PrivacyPolicyServicePurposeFromJson(
    Map<String, dynamic> json) {
  return _PrivacyPolicyServicePurpose.fromJson(json);
}

class _$PrivacyPolicyServicePurposeTearOff {
  const _$PrivacyPolicyServicePurposeTearOff();

  _PrivacyPolicyServicePurpose call(
      {String purpose,
      List<String> piiCategory,
      List<String> purposeCategory,
      String termination,
      bool thirdPartyDisclosure,
      String thirdPartyName,
      String consentType,
      bool primaryPurpose}) {
    return _PrivacyPolicyServicePurpose(
      purpose: purpose,
      piiCategory: piiCategory,
      purposeCategory: purposeCategory,
      termination: termination,
      thirdPartyDisclosure: thirdPartyDisclosure,
      thirdPartyName: thirdPartyName,
      consentType: consentType,
      primaryPurpose: primaryPurpose,
    );
  }
}

// ignore: unused_element
const $PrivacyPolicyServicePurpose = _$PrivacyPolicyServicePurposeTearOff();

mixin _$PrivacyPolicyServicePurpose {
  String get purpose;
  List<String> get piiCategory;
  List<String> get purposeCategory;
  String get termination;
  bool get thirdPartyDisclosure;
  String get thirdPartyName;
  String get consentType;
  bool get primaryPurpose;

  Map<String, dynamic> toJson();
  $PrivacyPolicyServicePurposeCopyWith<PrivacyPolicyServicePurpose>
      get copyWith;
}

abstract class $PrivacyPolicyServicePurposeCopyWith<$Res> {
  factory $PrivacyPolicyServicePurposeCopyWith(
          PrivacyPolicyServicePurpose value,
          $Res Function(PrivacyPolicyServicePurpose) then) =
      _$PrivacyPolicyServicePurposeCopyWithImpl<$Res>;
  $Res call(
      {String purpose,
      List<String> piiCategory,
      List<String> purposeCategory,
      String termination,
      bool thirdPartyDisclosure,
      String thirdPartyName,
      String consentType,
      bool primaryPurpose});
}

class _$PrivacyPolicyServicePurposeCopyWithImpl<$Res>
    implements $PrivacyPolicyServicePurposeCopyWith<$Res> {
  _$PrivacyPolicyServicePurposeCopyWithImpl(this._value, this._then);

  final PrivacyPolicyServicePurpose _value;
  // ignore: unused_field
  final $Res Function(PrivacyPolicyServicePurpose) _then;

  @override
  $Res call({
    Object purpose = freezed,
    Object piiCategory = freezed,
    Object purposeCategory = freezed,
    Object termination = freezed,
    Object thirdPartyDisclosure = freezed,
    Object thirdPartyName = freezed,
    Object consentType = freezed,
    Object primaryPurpose = freezed,
  }) {
    return _then(_value.copyWith(
      purpose: purpose == freezed ? _value.purpose : purpose as String,
      piiCategory: piiCategory == freezed
          ? _value.piiCategory
          : piiCategory as List<String>,
      purposeCategory: purposeCategory == freezed
          ? _value.purposeCategory
          : purposeCategory as List<String>,
      termination:
          termination == freezed ? _value.termination : termination as String,
      thirdPartyDisclosure: thirdPartyDisclosure == freezed
          ? _value.thirdPartyDisclosure
          : thirdPartyDisclosure as bool,
      thirdPartyName: thirdPartyName == freezed
          ? _value.thirdPartyName
          : thirdPartyName as String,
      consentType:
          consentType == freezed ? _value.consentType : consentType as String,
      primaryPurpose: primaryPurpose == freezed
          ? _value.primaryPurpose
          : primaryPurpose as bool,
    ));
  }
}

abstract class _$PrivacyPolicyServicePurposeCopyWith<$Res>
    implements $PrivacyPolicyServicePurposeCopyWith<$Res> {
  factory _$PrivacyPolicyServicePurposeCopyWith(
          _PrivacyPolicyServicePurpose value,
          $Res Function(_PrivacyPolicyServicePurpose) then) =
      __$PrivacyPolicyServicePurposeCopyWithImpl<$Res>;
  @override
  $Res call(
      {String purpose,
      List<String> piiCategory,
      List<String> purposeCategory,
      String termination,
      bool thirdPartyDisclosure,
      String thirdPartyName,
      String consentType,
      bool primaryPurpose});
}

class __$PrivacyPolicyServicePurposeCopyWithImpl<$Res>
    extends _$PrivacyPolicyServicePurposeCopyWithImpl<$Res>
    implements _$PrivacyPolicyServicePurposeCopyWith<$Res> {
  __$PrivacyPolicyServicePurposeCopyWithImpl(
      _PrivacyPolicyServicePurpose _value,
      $Res Function(_PrivacyPolicyServicePurpose) _then)
      : super(_value, (v) => _then(v as _PrivacyPolicyServicePurpose));

  @override
  _PrivacyPolicyServicePurpose get _value =>
      super._value as _PrivacyPolicyServicePurpose;

  @override
  $Res call({
    Object purpose = freezed,
    Object piiCategory = freezed,
    Object purposeCategory = freezed,
    Object termination = freezed,
    Object thirdPartyDisclosure = freezed,
    Object thirdPartyName = freezed,
    Object consentType = freezed,
    Object primaryPurpose = freezed,
  }) {
    return _then(_PrivacyPolicyServicePurpose(
      purpose: purpose == freezed ? _value.purpose : purpose as String,
      piiCategory: piiCategory == freezed
          ? _value.piiCategory
          : piiCategory as List<String>,
      purposeCategory: purposeCategory == freezed
          ? _value.purposeCategory
          : purposeCategory as List<String>,
      termination:
          termination == freezed ? _value.termination : termination as String,
      thirdPartyDisclosure: thirdPartyDisclosure == freezed
          ? _value.thirdPartyDisclosure
          : thirdPartyDisclosure as bool,
      thirdPartyName: thirdPartyName == freezed
          ? _value.thirdPartyName
          : thirdPartyName as String,
      consentType:
          consentType == freezed ? _value.consentType : consentType as String,
      primaryPurpose: primaryPurpose == freezed
          ? _value.primaryPurpose
          : primaryPurpose as bool,
    ));
  }
}

@JsonSerializable()
class _$_PrivacyPolicyServicePurpose implements _PrivacyPolicyServicePurpose {
  const _$_PrivacyPolicyServicePurpose(
      {this.purpose,
      this.piiCategory,
      this.purposeCategory,
      this.termination,
      this.thirdPartyDisclosure,
      this.thirdPartyName,
      this.consentType,
      this.primaryPurpose});

  factory _$_PrivacyPolicyServicePurpose.fromJson(Map<String, dynamic> json) =>
      _$_$_PrivacyPolicyServicePurposeFromJson(json);

  @override
  final String purpose;
  @override
  final List<String> piiCategory;
  @override
  final List<String> purposeCategory;
  @override
  final String termination;
  @override
  final bool thirdPartyDisclosure;
  @override
  final String thirdPartyName;
  @override
  final String consentType;
  @override
  final bool primaryPurpose;

  @override
  String toString() {
    return 'PrivacyPolicyServicePurpose(purpose: $purpose, piiCategory: $piiCategory, purposeCategory: $purposeCategory, termination: $termination, thirdPartyDisclosure: $thirdPartyDisclosure, thirdPartyName: $thirdPartyName, consentType: $consentType, primaryPurpose: $primaryPurpose)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PrivacyPolicyServicePurpose &&
            (identical(other.purpose, purpose) ||
                const DeepCollectionEquality()
                    .equals(other.purpose, purpose)) &&
            (identical(other.piiCategory, piiCategory) ||
                const DeepCollectionEquality()
                    .equals(other.piiCategory, piiCategory)) &&
            (identical(other.purposeCategory, purposeCategory) ||
                const DeepCollectionEquality()
                    .equals(other.purposeCategory, purposeCategory)) &&
            (identical(other.termination, termination) ||
                const DeepCollectionEquality()
                    .equals(other.termination, termination)) &&
            (identical(other.thirdPartyDisclosure, thirdPartyDisclosure) ||
                const DeepCollectionEquality().equals(
                    other.thirdPartyDisclosure, thirdPartyDisclosure)) &&
            (identical(other.thirdPartyName, thirdPartyName) ||
                const DeepCollectionEquality()
                    .equals(other.thirdPartyName, thirdPartyName)) &&
            (identical(other.consentType, consentType) ||
                const DeepCollectionEquality()
                    .equals(other.consentType, consentType)) &&
            (identical(other.primaryPurpose, primaryPurpose) ||
                const DeepCollectionEquality()
                    .equals(other.primaryPurpose, primaryPurpose)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(purpose) ^
      const DeepCollectionEquality().hash(piiCategory) ^
      const DeepCollectionEquality().hash(purposeCategory) ^
      const DeepCollectionEquality().hash(termination) ^
      const DeepCollectionEquality().hash(thirdPartyDisclosure) ^
      const DeepCollectionEquality().hash(thirdPartyName) ^
      const DeepCollectionEquality().hash(consentType) ^
      const DeepCollectionEquality().hash(primaryPurpose);

  @override
  _$PrivacyPolicyServicePurposeCopyWith<_PrivacyPolicyServicePurpose>
      get copyWith => __$PrivacyPolicyServicePurposeCopyWithImpl<
          _PrivacyPolicyServicePurpose>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PrivacyPolicyServicePurposeToJson(this);
  }
}

abstract class _PrivacyPolicyServicePurpose
    implements PrivacyPolicyServicePurpose {
  const factory _PrivacyPolicyServicePurpose(
      {String purpose,
      List<String> piiCategory,
      List<String> purposeCategory,
      String termination,
      bool thirdPartyDisclosure,
      String thirdPartyName,
      String consentType,
      bool primaryPurpose}) = _$_PrivacyPolicyServicePurpose;

  factory _PrivacyPolicyServicePurpose.fromJson(Map<String, dynamic> json) =
      _$_PrivacyPolicyServicePurpose.fromJson;

  @override
  String get purpose;
  @override
  List<String> get piiCategory;
  @override
  List<String> get purposeCategory;
  @override
  String get termination;
  @override
  bool get thirdPartyDisclosure;
  @override
  String get thirdPartyName;
  @override
  String get consentType;
  @override
  bool get primaryPurpose;
  @override
  _$PrivacyPolicyServicePurposeCopyWith<_PrivacyPolicyServicePurpose>
      get copyWith;
}

class _$ReceiptViewerActionTearOff {
  const _$ReceiptViewerActionTearOff();

  _SendEmail sendEmail(PiiController controller) {
    return _SendEmail(
      controller,
    );
  }

  _Call call(PiiController controller) {
    return _Call(
      controller,
    );
  }

  _AddContact addContact(PiiController controller) {
    return _AddContact(
      controller,
    );
  }

  _VisitWeb visitWeb(PiiController controller) {
    return _VisitWeb(
      controller,
    );
  }

  _GoToTermination goToTermination(PrivacyPolicyServicePurpose purpose) {
    return _GoToTermination(
      purpose,
    );
  }

  _GoToPrivacyPolicy goToPrivacyPolicy() {
    return const _GoToPrivacyPolicy();
  }
}

// ignore: unused_element
const $ReceiptViewerAction = _$ReceiptViewerActionTearOff();

mixin _$ReceiptViewerAction {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result sendEmail(PiiController controller),
    @required Result call(PiiController controller),
    @required Result addContact(PiiController controller),
    @required Result visitWeb(PiiController controller),
    @required Result goToTermination(PrivacyPolicyServicePurpose purpose),
    @required Result goToPrivacyPolicy(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result sendEmail(PiiController controller),
    Result call(PiiController controller),
    Result addContact(PiiController controller),
    Result visitWeb(PiiController controller),
    Result goToTermination(PrivacyPolicyServicePurpose purpose),
    Result goToPrivacyPolicy(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result sendEmail(_SendEmail value),
    @required Result call(_Call value),
    @required Result addContact(_AddContact value),
    @required Result visitWeb(_VisitWeb value),
    @required Result goToTermination(_GoToTermination value),
    @required Result goToPrivacyPolicy(_GoToPrivacyPolicy value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result sendEmail(_SendEmail value),
    Result call(_Call value),
    Result addContact(_AddContact value),
    Result visitWeb(_VisitWeb value),
    Result goToTermination(_GoToTermination value),
    Result goToPrivacyPolicy(_GoToPrivacyPolicy value),
    @required Result orElse(),
  });
}

abstract class $ReceiptViewerActionCopyWith<$Res> {
  factory $ReceiptViewerActionCopyWith(
          ReceiptViewerAction value, $Res Function(ReceiptViewerAction) then) =
      _$ReceiptViewerActionCopyWithImpl<$Res>;
}

class _$ReceiptViewerActionCopyWithImpl<$Res>
    implements $ReceiptViewerActionCopyWith<$Res> {
  _$ReceiptViewerActionCopyWithImpl(this._value, this._then);

  final ReceiptViewerAction _value;
  // ignore: unused_field
  final $Res Function(ReceiptViewerAction) _then;
}

abstract class _$SendEmailCopyWith<$Res> {
  factory _$SendEmailCopyWith(
          _SendEmail value, $Res Function(_SendEmail) then) =
      __$SendEmailCopyWithImpl<$Res>;
  $Res call({PiiController controller});

  $PiiControllerCopyWith<$Res> get controller;
}

class __$SendEmailCopyWithImpl<$Res>
    extends _$ReceiptViewerActionCopyWithImpl<$Res>
    implements _$SendEmailCopyWith<$Res> {
  __$SendEmailCopyWithImpl(_SendEmail _value, $Res Function(_SendEmail) _then)
      : super(_value, (v) => _then(v as _SendEmail));

  @override
  _SendEmail get _value => super._value as _SendEmail;

  @override
  $Res call({
    Object controller = freezed,
  }) {
    return _then(_SendEmail(
      controller == freezed ? _value.controller : controller as PiiController,
    ));
  }

  @override
  $PiiControllerCopyWith<$Res> get controller {
    if (_value.controller == null) {
      return null;
    }
    return $PiiControllerCopyWith<$Res>(_value.controller, (value) {
      return _then(_value.copyWith(controller: value));
    });
  }
}

class _$_SendEmail implements _SendEmail {
  const _$_SendEmail(this.controller) : assert(controller != null);

  @override
  final PiiController controller;

  @override
  String toString() {
    return 'ReceiptViewerAction.sendEmail(controller: $controller)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SendEmail &&
            (identical(other.controller, controller) ||
                const DeepCollectionEquality()
                    .equals(other.controller, controller)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(controller);

  @override
  _$SendEmailCopyWith<_SendEmail> get copyWith =>
      __$SendEmailCopyWithImpl<_SendEmail>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result sendEmail(PiiController controller),
    @required Result call(PiiController controller),
    @required Result addContact(PiiController controller),
    @required Result visitWeb(PiiController controller),
    @required Result goToTermination(PrivacyPolicyServicePurpose purpose),
    @required Result goToPrivacyPolicy(),
  }) {
    assert(sendEmail != null);
    assert(call != null);
    assert(addContact != null);
    assert(visitWeb != null);
    assert(goToTermination != null);
    assert(goToPrivacyPolicy != null);
    return sendEmail(controller);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result sendEmail(PiiController controller),
    Result call(PiiController controller),
    Result addContact(PiiController controller),
    Result visitWeb(PiiController controller),
    Result goToTermination(PrivacyPolicyServicePurpose purpose),
    Result goToPrivacyPolicy(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (sendEmail != null) {
      return sendEmail(controller);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result sendEmail(_SendEmail value),
    @required Result call(_Call value),
    @required Result addContact(_AddContact value),
    @required Result visitWeb(_VisitWeb value),
    @required Result goToTermination(_GoToTermination value),
    @required Result goToPrivacyPolicy(_GoToPrivacyPolicy value),
  }) {
    assert(sendEmail != null);
    assert(call != null);
    assert(addContact != null);
    assert(visitWeb != null);
    assert(goToTermination != null);
    assert(goToPrivacyPolicy != null);
    return sendEmail(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result sendEmail(_SendEmail value),
    Result call(_Call value),
    Result addContact(_AddContact value),
    Result visitWeb(_VisitWeb value),
    Result goToTermination(_GoToTermination value),
    Result goToPrivacyPolicy(_GoToPrivacyPolicy value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (sendEmail != null) {
      return sendEmail(this);
    }
    return orElse();
  }
}

abstract class _SendEmail implements ReceiptViewerAction {
  const factory _SendEmail(PiiController controller) = _$_SendEmail;

  PiiController get controller;
  _$SendEmailCopyWith<_SendEmail> get copyWith;
}

abstract class _$CallCopyWith<$Res> {
  factory _$CallCopyWith(_Call value, $Res Function(_Call) then) =
      __$CallCopyWithImpl<$Res>;
  $Res call({PiiController controller});

  $PiiControllerCopyWith<$Res> get controller;
}

class __$CallCopyWithImpl<$Res> extends _$ReceiptViewerActionCopyWithImpl<$Res>
    implements _$CallCopyWith<$Res> {
  __$CallCopyWithImpl(_Call _value, $Res Function(_Call) _then)
      : super(_value, (v) => _then(v as _Call));

  @override
  _Call get _value => super._value as _Call;

  @override
  $Res call({
    Object controller = freezed,
  }) {
    return _then(_Call(
      controller == freezed ? _value.controller : controller as PiiController,
    ));
  }

  @override
  $PiiControllerCopyWith<$Res> get controller {
    if (_value.controller == null) {
      return null;
    }
    return $PiiControllerCopyWith<$Res>(_value.controller, (value) {
      return _then(_value.copyWith(controller: value));
    });
  }
}

class _$_Call implements _Call {
  const _$_Call(this.controller) : assert(controller != null);

  @override
  final PiiController controller;

  @override
  String toString() {
    return 'ReceiptViewerAction.call(controller: $controller)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Call &&
            (identical(other.controller, controller) ||
                const DeepCollectionEquality()
                    .equals(other.controller, controller)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(controller);

  @override
  _$CallCopyWith<_Call> get copyWith =>
      __$CallCopyWithImpl<_Call>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result sendEmail(PiiController controller),
    @required Result call(PiiController controller),
    @required Result addContact(PiiController controller),
    @required Result visitWeb(PiiController controller),
    @required Result goToTermination(PrivacyPolicyServicePurpose purpose),
    @required Result goToPrivacyPolicy(),
  }) {
    assert(sendEmail != null);
    assert(call != null);
    assert(addContact != null);
    assert(visitWeb != null);
    assert(goToTermination != null);
    assert(goToPrivacyPolicy != null);
    return call(controller);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result sendEmail(PiiController controller),
    Result call(PiiController controller),
    Result addContact(PiiController controller),
    Result visitWeb(PiiController controller),
    Result goToTermination(PrivacyPolicyServicePurpose purpose),
    Result goToPrivacyPolicy(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (call != null) {
      return call(controller);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result sendEmail(_SendEmail value),
    @required Result call(_Call value),
    @required Result addContact(_AddContact value),
    @required Result visitWeb(_VisitWeb value),
    @required Result goToTermination(_GoToTermination value),
    @required Result goToPrivacyPolicy(_GoToPrivacyPolicy value),
  }) {
    assert(sendEmail != null);
    assert(call != null);
    assert(addContact != null);
    assert(visitWeb != null);
    assert(goToTermination != null);
    assert(goToPrivacyPolicy != null);
    return call(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result sendEmail(_SendEmail value),
    Result call(_Call value),
    Result addContact(_AddContact value),
    Result visitWeb(_VisitWeb value),
    Result goToTermination(_GoToTermination value),
    Result goToPrivacyPolicy(_GoToPrivacyPolicy value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (call != null) {
      return call(this);
    }
    return orElse();
  }
}

abstract class _Call implements ReceiptViewerAction {
  const factory _Call(PiiController controller) = _$_Call;

  PiiController get controller;
  _$CallCopyWith<_Call> get copyWith;
}

abstract class _$AddContactCopyWith<$Res> {
  factory _$AddContactCopyWith(
          _AddContact value, $Res Function(_AddContact) then) =
      __$AddContactCopyWithImpl<$Res>;
  $Res call({PiiController controller});

  $PiiControllerCopyWith<$Res> get controller;
}

class __$AddContactCopyWithImpl<$Res>
    extends _$ReceiptViewerActionCopyWithImpl<$Res>
    implements _$AddContactCopyWith<$Res> {
  __$AddContactCopyWithImpl(
      _AddContact _value, $Res Function(_AddContact) _then)
      : super(_value, (v) => _then(v as _AddContact));

  @override
  _AddContact get _value => super._value as _AddContact;

  @override
  $Res call({
    Object controller = freezed,
  }) {
    return _then(_AddContact(
      controller == freezed ? _value.controller : controller as PiiController,
    ));
  }

  @override
  $PiiControllerCopyWith<$Res> get controller {
    if (_value.controller == null) {
      return null;
    }
    return $PiiControllerCopyWith<$Res>(_value.controller, (value) {
      return _then(_value.copyWith(controller: value));
    });
  }
}

class _$_AddContact implements _AddContact {
  const _$_AddContact(this.controller) : assert(controller != null);

  @override
  final PiiController controller;

  @override
  String toString() {
    return 'ReceiptViewerAction.addContact(controller: $controller)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddContact &&
            (identical(other.controller, controller) ||
                const DeepCollectionEquality()
                    .equals(other.controller, controller)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(controller);

  @override
  _$AddContactCopyWith<_AddContact> get copyWith =>
      __$AddContactCopyWithImpl<_AddContact>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result sendEmail(PiiController controller),
    @required Result call(PiiController controller),
    @required Result addContact(PiiController controller),
    @required Result visitWeb(PiiController controller),
    @required Result goToTermination(PrivacyPolicyServicePurpose purpose),
    @required Result goToPrivacyPolicy(),
  }) {
    assert(sendEmail != null);
    assert(call != null);
    assert(addContact != null);
    assert(visitWeb != null);
    assert(goToTermination != null);
    assert(goToPrivacyPolicy != null);
    return addContact(controller);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result sendEmail(PiiController controller),
    Result call(PiiController controller),
    Result addContact(PiiController controller),
    Result visitWeb(PiiController controller),
    Result goToTermination(PrivacyPolicyServicePurpose purpose),
    Result goToPrivacyPolicy(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addContact != null) {
      return addContact(controller);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result sendEmail(_SendEmail value),
    @required Result call(_Call value),
    @required Result addContact(_AddContact value),
    @required Result visitWeb(_VisitWeb value),
    @required Result goToTermination(_GoToTermination value),
    @required Result goToPrivacyPolicy(_GoToPrivacyPolicy value),
  }) {
    assert(sendEmail != null);
    assert(call != null);
    assert(addContact != null);
    assert(visitWeb != null);
    assert(goToTermination != null);
    assert(goToPrivacyPolicy != null);
    return addContact(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result sendEmail(_SendEmail value),
    Result call(_Call value),
    Result addContact(_AddContact value),
    Result visitWeb(_VisitWeb value),
    Result goToTermination(_GoToTermination value),
    Result goToPrivacyPolicy(_GoToPrivacyPolicy value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addContact != null) {
      return addContact(this);
    }
    return orElse();
  }
}

abstract class _AddContact implements ReceiptViewerAction {
  const factory _AddContact(PiiController controller) = _$_AddContact;

  PiiController get controller;
  _$AddContactCopyWith<_AddContact> get copyWith;
}

abstract class _$VisitWebCopyWith<$Res> {
  factory _$VisitWebCopyWith(_VisitWeb value, $Res Function(_VisitWeb) then) =
      __$VisitWebCopyWithImpl<$Res>;
  $Res call({PiiController controller});

  $PiiControllerCopyWith<$Res> get controller;
}

class __$VisitWebCopyWithImpl<$Res>
    extends _$ReceiptViewerActionCopyWithImpl<$Res>
    implements _$VisitWebCopyWith<$Res> {
  __$VisitWebCopyWithImpl(_VisitWeb _value, $Res Function(_VisitWeb) _then)
      : super(_value, (v) => _then(v as _VisitWeb));

  @override
  _VisitWeb get _value => super._value as _VisitWeb;

  @override
  $Res call({
    Object controller = freezed,
  }) {
    return _then(_VisitWeb(
      controller == freezed ? _value.controller : controller as PiiController,
    ));
  }

  @override
  $PiiControllerCopyWith<$Res> get controller {
    if (_value.controller == null) {
      return null;
    }
    return $PiiControllerCopyWith<$Res>(_value.controller, (value) {
      return _then(_value.copyWith(controller: value));
    });
  }
}

class _$_VisitWeb implements _VisitWeb {
  const _$_VisitWeb(this.controller) : assert(controller != null);

  @override
  final PiiController controller;

  @override
  String toString() {
    return 'ReceiptViewerAction.visitWeb(controller: $controller)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VisitWeb &&
            (identical(other.controller, controller) ||
                const DeepCollectionEquality()
                    .equals(other.controller, controller)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(controller);

  @override
  _$VisitWebCopyWith<_VisitWeb> get copyWith =>
      __$VisitWebCopyWithImpl<_VisitWeb>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result sendEmail(PiiController controller),
    @required Result call(PiiController controller),
    @required Result addContact(PiiController controller),
    @required Result visitWeb(PiiController controller),
    @required Result goToTermination(PrivacyPolicyServicePurpose purpose),
    @required Result goToPrivacyPolicy(),
  }) {
    assert(sendEmail != null);
    assert(call != null);
    assert(addContact != null);
    assert(visitWeb != null);
    assert(goToTermination != null);
    assert(goToPrivacyPolicy != null);
    return visitWeb(controller);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result sendEmail(PiiController controller),
    Result call(PiiController controller),
    Result addContact(PiiController controller),
    Result visitWeb(PiiController controller),
    Result goToTermination(PrivacyPolicyServicePurpose purpose),
    Result goToPrivacyPolicy(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (visitWeb != null) {
      return visitWeb(controller);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result sendEmail(_SendEmail value),
    @required Result call(_Call value),
    @required Result addContact(_AddContact value),
    @required Result visitWeb(_VisitWeb value),
    @required Result goToTermination(_GoToTermination value),
    @required Result goToPrivacyPolicy(_GoToPrivacyPolicy value),
  }) {
    assert(sendEmail != null);
    assert(call != null);
    assert(addContact != null);
    assert(visitWeb != null);
    assert(goToTermination != null);
    assert(goToPrivacyPolicy != null);
    return visitWeb(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result sendEmail(_SendEmail value),
    Result call(_Call value),
    Result addContact(_AddContact value),
    Result visitWeb(_VisitWeb value),
    Result goToTermination(_GoToTermination value),
    Result goToPrivacyPolicy(_GoToPrivacyPolicy value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (visitWeb != null) {
      return visitWeb(this);
    }
    return orElse();
  }
}

abstract class _VisitWeb implements ReceiptViewerAction {
  const factory _VisitWeb(PiiController controller) = _$_VisitWeb;

  PiiController get controller;
  _$VisitWebCopyWith<_VisitWeb> get copyWith;
}

abstract class _$GoToTerminationCopyWith<$Res> {
  factory _$GoToTerminationCopyWith(
          _GoToTermination value, $Res Function(_GoToTermination) then) =
      __$GoToTerminationCopyWithImpl<$Res>;
  $Res call({PrivacyPolicyServicePurpose purpose});

  $PrivacyPolicyServicePurposeCopyWith<$Res> get purpose;
}

class __$GoToTerminationCopyWithImpl<$Res>
    extends _$ReceiptViewerActionCopyWithImpl<$Res>
    implements _$GoToTerminationCopyWith<$Res> {
  __$GoToTerminationCopyWithImpl(
      _GoToTermination _value, $Res Function(_GoToTermination) _then)
      : super(_value, (v) => _then(v as _GoToTermination));

  @override
  _GoToTermination get _value => super._value as _GoToTermination;

  @override
  $Res call({
    Object purpose = freezed,
  }) {
    return _then(_GoToTermination(
      purpose == freezed
          ? _value.purpose
          : purpose as PrivacyPolicyServicePurpose,
    ));
  }

  @override
  $PrivacyPolicyServicePurposeCopyWith<$Res> get purpose {
    if (_value.purpose == null) {
      return null;
    }
    return $PrivacyPolicyServicePurposeCopyWith<$Res>(_value.purpose, (value) {
      return _then(_value.copyWith(purpose: value));
    });
  }
}

class _$_GoToTermination implements _GoToTermination {
  const _$_GoToTermination(this.purpose) : assert(purpose != null);

  @override
  final PrivacyPolicyServicePurpose purpose;

  @override
  String toString() {
    return 'ReceiptViewerAction.goToTermination(purpose: $purpose)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GoToTermination &&
            (identical(other.purpose, purpose) ||
                const DeepCollectionEquality().equals(other.purpose, purpose)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(purpose);

  @override
  _$GoToTerminationCopyWith<_GoToTermination> get copyWith =>
      __$GoToTerminationCopyWithImpl<_GoToTermination>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result sendEmail(PiiController controller),
    @required Result call(PiiController controller),
    @required Result addContact(PiiController controller),
    @required Result visitWeb(PiiController controller),
    @required Result goToTermination(PrivacyPolicyServicePurpose purpose),
    @required Result goToPrivacyPolicy(),
  }) {
    assert(sendEmail != null);
    assert(call != null);
    assert(addContact != null);
    assert(visitWeb != null);
    assert(goToTermination != null);
    assert(goToPrivacyPolicy != null);
    return goToTermination(purpose);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result sendEmail(PiiController controller),
    Result call(PiiController controller),
    Result addContact(PiiController controller),
    Result visitWeb(PiiController controller),
    Result goToTermination(PrivacyPolicyServicePurpose purpose),
    Result goToPrivacyPolicy(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (goToTermination != null) {
      return goToTermination(purpose);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result sendEmail(_SendEmail value),
    @required Result call(_Call value),
    @required Result addContact(_AddContact value),
    @required Result visitWeb(_VisitWeb value),
    @required Result goToTermination(_GoToTermination value),
    @required Result goToPrivacyPolicy(_GoToPrivacyPolicy value),
  }) {
    assert(sendEmail != null);
    assert(call != null);
    assert(addContact != null);
    assert(visitWeb != null);
    assert(goToTermination != null);
    assert(goToPrivacyPolicy != null);
    return goToTermination(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result sendEmail(_SendEmail value),
    Result call(_Call value),
    Result addContact(_AddContact value),
    Result visitWeb(_VisitWeb value),
    Result goToTermination(_GoToTermination value),
    Result goToPrivacyPolicy(_GoToPrivacyPolicy value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (goToTermination != null) {
      return goToTermination(this);
    }
    return orElse();
  }
}

abstract class _GoToTermination implements ReceiptViewerAction {
  const factory _GoToTermination(PrivacyPolicyServicePurpose purpose) =
      _$_GoToTermination;

  PrivacyPolicyServicePurpose get purpose;
  _$GoToTerminationCopyWith<_GoToTermination> get copyWith;
}

abstract class _$GoToPrivacyPolicyCopyWith<$Res> {
  factory _$GoToPrivacyPolicyCopyWith(
          _GoToPrivacyPolicy value, $Res Function(_GoToPrivacyPolicy) then) =
      __$GoToPrivacyPolicyCopyWithImpl<$Res>;
}

class __$GoToPrivacyPolicyCopyWithImpl<$Res>
    extends _$ReceiptViewerActionCopyWithImpl<$Res>
    implements _$GoToPrivacyPolicyCopyWith<$Res> {
  __$GoToPrivacyPolicyCopyWithImpl(
      _GoToPrivacyPolicy _value, $Res Function(_GoToPrivacyPolicy) _then)
      : super(_value, (v) => _then(v as _GoToPrivacyPolicy));

  @override
  _GoToPrivacyPolicy get _value => super._value as _GoToPrivacyPolicy;
}

class _$_GoToPrivacyPolicy implements _GoToPrivacyPolicy {
  const _$_GoToPrivacyPolicy();

  @override
  String toString() {
    return 'ReceiptViewerAction.goToPrivacyPolicy()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GoToPrivacyPolicy);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result sendEmail(PiiController controller),
    @required Result call(PiiController controller),
    @required Result addContact(PiiController controller),
    @required Result visitWeb(PiiController controller),
    @required Result goToTermination(PrivacyPolicyServicePurpose purpose),
    @required Result goToPrivacyPolicy(),
  }) {
    assert(sendEmail != null);
    assert(call != null);
    assert(addContact != null);
    assert(visitWeb != null);
    assert(goToTermination != null);
    assert(goToPrivacyPolicy != null);
    return goToPrivacyPolicy();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result sendEmail(PiiController controller),
    Result call(PiiController controller),
    Result addContact(PiiController controller),
    Result visitWeb(PiiController controller),
    Result goToTermination(PrivacyPolicyServicePurpose purpose),
    Result goToPrivacyPolicy(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (goToPrivacyPolicy != null) {
      return goToPrivacyPolicy();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result sendEmail(_SendEmail value),
    @required Result call(_Call value),
    @required Result addContact(_AddContact value),
    @required Result visitWeb(_VisitWeb value),
    @required Result goToTermination(_GoToTermination value),
    @required Result goToPrivacyPolicy(_GoToPrivacyPolicy value),
  }) {
    assert(sendEmail != null);
    assert(call != null);
    assert(addContact != null);
    assert(visitWeb != null);
    assert(goToTermination != null);
    assert(goToPrivacyPolicy != null);
    return goToPrivacyPolicy(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result sendEmail(_SendEmail value),
    Result call(_Call value),
    Result addContact(_AddContact value),
    Result visitWeb(_VisitWeb value),
    Result goToTermination(_GoToTermination value),
    Result goToPrivacyPolicy(_GoToPrivacyPolicy value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (goToPrivacyPolicy != null) {
      return goToPrivacyPolicy(this);
    }
    return orElse();
  }
}

abstract class _GoToPrivacyPolicy implements ReceiptViewerAction {
  const factory _GoToPrivacyPolicy() = _$_GoToPrivacyPolicy;
}
