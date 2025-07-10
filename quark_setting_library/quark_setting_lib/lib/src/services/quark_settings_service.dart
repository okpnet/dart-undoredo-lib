import '../models/user_settings.dart';
import '../models/app_settings.dart';
import '../settings/local/user_settings_service.dart';
import '../settings/remote/app_settings_service.dart';

class QuarkSettingsService {
  final IUserSettingsService localService;
  final IAppSettingsService remoteService;

  QuarkSettingsService({
    required this.localService,
    required this.remoteService,
  });

  Future<void> saveUserSettings(UserSettings settings) async {
    await localService.save(settings);
  }

  Future<UserSettings> loadUserSettings() async {
    return await localService.load();
  }

  Future<void> saveAppSettings(AppSettings settings) async {
    await remoteService.save(settings);
  }

  Future<AppSettings> loadAppSettings() async {
    return await remoteService.load();
  }
}
