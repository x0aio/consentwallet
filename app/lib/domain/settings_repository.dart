import 'package:content_wallet/domain/domain.dart';

abstract class SettingsRepository {

    Future<Settings> get();
}