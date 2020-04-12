part of 'domain.dart';

@freezed
abstract class PrivacyPolicyService with _$PrivacyPolicyService {

    const factory PrivacyPolicyService({
        String service,
        List<PrivacyPolicyServicePurpose> purposes,
    }) = _PrivacyPolicyService;

    factory PrivacyPolicyService.fromJson(Map<String, dynamic> json) => _$PrivacyPolicyServiceFromJson(json);
}