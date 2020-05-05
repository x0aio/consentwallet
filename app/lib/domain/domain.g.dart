// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'domain.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Settings _$_$_SettingsFromJson(Map<String, dynamic> json) {
  return _$_Settings(
    firstTime: json['firstTime'] as bool,
    encryptionKey:
        (json['encryptionKey'] as List)?.map((e) => e as int)?.toList(),
  );
}

Map<String, dynamic> _$_$_SettingsToJson(_$_Settings instance) =>
    <String, dynamic>{
      'firstTime': instance.firstTime,
      'encryptionKey': instance.encryptionKey,
    };
