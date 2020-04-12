part of 'domain.dart';

@freezed
abstract class ConsentReceipt with _$ConsentReceipt {

    const factory ConsentReceipt({
        String version,
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
        List<String> spiCat
    }) = _ConsentReceipt;

    factory ConsentReceipt.fromJson(Map<String, dynamic> json) => _$ConsentReceiptFromJson(json);

    factory ConsentReceipt.fromJWT(String token) {
        return _$ConsentReceiptFromJson(_parseJwt(token));
    }

    static Map<String, dynamic> _parseJwt(String token) {
        final parts = token.split('.');

        if (parts.length != 3) {
            throw const FormatException('Invalid token.');
        }

        final payload = _decodeBase64(parts[1]);
        final payloadMap = json.decode(payload);

        if (payloadMap is Map<String, dynamic>) {
            return payloadMap;
        }

        throw const FormatException('Invalid payload.');
    }

    static String _decodeBase64(String str) {
        String output = str.replaceAll('-', '+').replaceAll('_', '/');

        switch (output.length % 4) {
            case 0:
                break;
            case 2:
                output += "==";
                break;
            case 3:
                output += '=';
                break;
            default:
                throw Exception('Illegal base64 string.');
        }

        return utf8.decode(base64Url.decode(output));
    }
}
