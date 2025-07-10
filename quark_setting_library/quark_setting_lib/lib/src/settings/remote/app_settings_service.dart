import '../../models/app_settings.dart';

abstract class IAppSettingsService {
  Future<void> save(AppSettings settings);
  Future<AppSettings> load();
}
