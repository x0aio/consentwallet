part of 'domain.dart';

@freezed
abstract class PiiController with _$PiiController {

    const factory PiiController({
        String piiController,
        String url,
        PiiControllerAddress address,
        String contact,
        String email,
        String org,
        String phone,
        bool onBehalf
    }) = _PiiController;

    factory PiiController.fromJson(Map<String, dynamic> json) => _$PiiControllerFromJson(json);
}