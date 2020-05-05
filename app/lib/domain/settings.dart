part of 'domain.dart';

@freezed
abstract class Settings with _$Settings {

    const factory Settings({
        @required bool firstTime,
        @required List<int> encryptionKey
    }) = _Settings;

    factory Settings.fromJson(Map<String, dynamic> json) => _$SettingsFromJson(json);
}
