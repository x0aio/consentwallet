part of 'domain.dart';

@freezed
abstract class StoredToken with _$StoredToken {

    const factory StoredToken({
        @required String key,
        @required String token,
        @required String principalController,
        @required DateTime consentTimestamp,
        @required DateTime savedAt,
        @required bool isDemo
    }) = _StoredToken;
}