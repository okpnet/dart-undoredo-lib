import '../../models/user_settings.dart';

abstract class IUserSettingsService {
  Future<void> save(UserSettings settings);
  Future<UserSettings> load();
}
