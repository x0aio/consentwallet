import 'package:content_wallet/domain/domain.dart';
import 'package:hive/hive.dart';

class StoredTokenAdapter extends TypeAdapter<StoredToken> {

    @override
    final int typeId = 70;

    @override
    StoredToken read(BinaryReader reader) {
        final numOfFields = reader.readByte();
        String principalController;
        String key;
        String token;
        DateTime consentTimestamp;
        DateTime savedAt;
        bool isDemo;

        for (var i = 0; i < numOfFields; i++) {
            switch (reader.readByte()) {
                case 0:
                    key = reader.readString();
                    break;
                case 1:
                    principalController = reader.readString();
                    break;
                case 2:
                    token = reader.readString();
                    break;
                case 3:
                    consentTimestamp = reader.read() as DateTime;
                    break;
                case 4:
                    savedAt = reader.read() as DateTime;
                    break;
                case 5:
                    isDemo = reader.readBool();
                    break;
            }
        }

        return StoredToken(
            key: key,
            principalController: principalController,
            token: token,
            consentTimestamp: consentTimestamp,
            savedAt: savedAt,
            isDemo: isDemo
        );
    }

    @override
    void write(BinaryWriter writer, StoredToken token) {
        writer.writeByte(6);
        writer.writeByte(0);
        writer.writeString(token.key);
        writer.writeByte(1);
        writer.writeString(token.principalController);
        writer.writeByte(2);
        writer.writeString(token.token);
        writer.writeByte(3);
        writer.write(token.consentTimestamp);
        writer.writeByte(4);
        writer.write(token.savedAt);
        writer.writeByte(5);
        writer.writeBool(token.isDemo);
    }
}