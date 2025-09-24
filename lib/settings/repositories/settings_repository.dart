import 'package:fridge_tracker/settings/datasources/user_system_datasource.dart';
import 'package:injectable/injectable.dart';

abstract interface class SettingsRepository {
  Future<String?> getApplicationVersion();
}

@Singleton(as: SettingsRepository)
class SettingsRepositoryImpl implements SettingsRepository {
  final UserSystemDataSource _userSystemDataSource;

  SettingsRepositoryImpl(this._userSystemDataSource);

  @override
  Future<String?> getApplicationVersion() async {
    return await _userSystemDataSource.getApplicationVersion();
  }
}
