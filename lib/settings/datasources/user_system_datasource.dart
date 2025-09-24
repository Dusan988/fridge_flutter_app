import 'package:injectable/injectable.dart';
import 'package:package_info_plus/package_info_plus.dart';

abstract interface class UserSystemDataSource {
  Future<String?> getApplicationVersion();
}

@Singleton(as: UserSystemDataSource)
class UserSystemDataSourceImpl implements UserSystemDataSource{

  final PackageInfo _packageInfo;

  const UserSystemDataSourceImpl(this._packageInfo);
  @override
  Future<String?> getApplicationVersion() async {
    return _packageInfo.version;
  }
}
