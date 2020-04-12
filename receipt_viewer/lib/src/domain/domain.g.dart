// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'domain.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ConsentReceipt _$_$_ConsentReceiptFromJson(Map<String, dynamic> json) {
  return _$_ConsentReceipt(
    version: json['version'] as String,
    jurisdiction: json['jurisdiction'] as String,
    consentTimestamp: json['consentTimestamp'] as int,
    collectionMethod: json['collectionMethod'] as String,
    consentReceiptID: json['consentReceiptID'] as String,
    language: json['language'] as String,
    piiPrincipalId: json['piiPrincipalId'] as String,
    policyUrl: json['policyUrl'] as String,
    controllers: (json['controllers'] as List)
        ?.map((e) => e == null
            ? null
            : PiiController.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    services: (json['services'] as List)
        ?.map((e) => e == null
            ? null
            : PrivacyPolicyService.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    sensitive: json['sensitive'] as bool,
    spiCat: (json['spiCat'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$_$_ConsentReceiptToJson(_$_ConsentReceipt instance) =>
    <String, dynamic>{
      'version': instance.version,
      'jurisdiction': instance.jurisdiction,
      'consentTimestamp': instance.consentTimestamp,
      'collectionMethod': instance.collectionMethod,
      'consentReceiptID': instance.consentReceiptID,
      'language': instance.language,
      'piiPrincipalId': instance.piiPrincipalId,
      'policyUrl': instance.policyUrl,
      'controllers': instance.controllers,
      'services': instance.services,
      'sensitive': instance.sensitive,
      'spiCat': instance.spiCat,
    };

_$_PiiController _$_$_PiiControllerFromJson(Map<String, dynamic> json) {
  return _$_PiiController(
    piiController: json['piiController'] as String,
    url: json['url'] as String,
    address: json['address'] == null
        ? null
        : PiiControllerAddress.fromJson(
            json['address'] as Map<String, dynamic>),
    contact: json['contact'] as String,
    email: json['email'] as String,
    org: json['org'] as String,
    phone: json['phone'] as String,
    onBehalf: json['onBehalf'] as bool,
  );
}

Map<String, dynamic> _$_$_PiiControllerToJson(_$_PiiController instance) =>
    <String, dynamic>{
      'piiController': instance.piiController,
      'url': instance.url,
      'address': instance.address,
      'contact': instance.contact,
      'email': instance.email,
      'org': instance.org,
      'phone': instance.phone,
      'onBehalf': instance.onBehalf,
    };

_$_PiiControllerAddress _$_$_PiiControllerAddressFromJson(
    Map<String, dynamic> json) {
  return _$_PiiControllerAddress(
    streetAddress: json['streetAddress'] as String,
    postalCode: json['postalCode'] as String,
    addressLocality: json['addressLocality'] as String,
    addressRegion: json['addressRegion'] as String,
    addressCountry: json['addressCountry'] as String,
  );
}

Map<String, dynamic> _$_$_PiiControllerAddressToJson(
        _$_PiiControllerAddress instance) =>
    <String, dynamic>{
      'streetAddress': instance.streetAddress,
      'postalCode': instance.postalCode,
      'addressLocality': instance.addressLocality,
      'addressRegion': instance.addressRegion,
      'addressCountry': instance.addressCountry,
    };

_$_PrivacyPolicyService _$_$_PrivacyPolicyServiceFromJson(
    Map<String, dynamic> json) {
  return _$_PrivacyPolicyService(
    service: json['service'] as String,
    purposes: (json['purposes'] as List)
        ?.map((e) => e == null
            ? null
            : PrivacyPolicyServicePurpose.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_PrivacyPolicyServiceToJson(
        _$_PrivacyPolicyService instance) =>
    <String, dynamic>{
      'service': instance.service,
      'purposes': instance.purposes,
    };

_$_PrivacyPolicyServicePurpose _$_$_PrivacyPolicyServicePurposeFromJson(
    Map<String, dynamic> json) {
  return _$_PrivacyPolicyServicePurpose(
    purpose: json['purpose'] as String,
    piiCategory:
        (json['piiCategory'] as List)?.map((e) => e as String)?.toList(),
    purposeCategory:
        (json['purposeCategory'] as List)?.map((e) => e as String)?.toList(),
    termination: json['termination'] as String,
    thirdPartyDisclosure: json['thirdPartyDisclosure'] as bool,
    thirdPartyName: json['thirdPartyName'] as String,
    consentType: json['consentType'] as String,
    primaryPurpose: json['primaryPurpose'] as bool,
  );
}

Map<String, dynamic> _$_$_PrivacyPolicyServicePurposeToJson(
        _$_PrivacyPolicyServicePurpose instance) =>
    <String, dynamic>{
      'purpose': instance.purpose,
      'piiCategory': instance.piiCategory,
      'purposeCategory': instance.purposeCategory,
      'termination': instance.termination,
      'thirdPartyDisclosure': instance.thirdPartyDisclosure,
      'thirdPartyName': instance.thirdPartyName,
      'consentType': instance.consentType,
      'primaryPurpose': instance.primaryPurpose,
    };
