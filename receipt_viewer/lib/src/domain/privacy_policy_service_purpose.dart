part of 'domain.dart';

@freezed
abstract class PrivacyPolicyServicePurpose with _$PrivacyPolicyServicePurpose {

    const factory PrivacyPolicyServicePurpose({
        String purpose,
        List<String> piiCategory,
        List<String> purposeCategory,
        String termination,
        bool thirdPartyDisclosure,
        String thirdPartyName,
        String consentType,
        bool primaryPurpose,
    }) = _PrivacyPolicyServicePurpose;

    factory PrivacyPolicyServicePurpose.fromJson(Map<String, dynamic> json) => _$PrivacyPolicyServicePurposeFromJson(json);
}