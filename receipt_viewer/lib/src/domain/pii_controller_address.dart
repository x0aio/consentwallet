part of 'domain.dart';

@freezed
abstract class PiiControllerAddress with _$PiiControllerAddress {

    const factory PiiControllerAddress({
        String streetAddress,
        String postalCode,
        String addressLocality,
        String addressRegion,
        String addressCountry,
    }) = _PiiControllerAddress;

    factory PiiControllerAddress.fromJson(Map<String, dynamic> json) => _$PiiControllerAddressFromJson(json);
}