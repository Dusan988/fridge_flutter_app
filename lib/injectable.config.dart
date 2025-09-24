// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i974;
import 'package:fridge_tracker/app_module.dart' as _i375;
import 'package:fridge_tracker/authentication/blocs/auth_cubit.dart' as _i368;
import 'package:fridge_tracker/authentication/repositories/auth_repository.dart'
    as _i169;
import 'package:fridge_tracker/core/blocs/connectivity_cubit.dart' as _i447;
import 'package:fridge_tracker/core/blocs/permission_cubit.dart' as _i27;
import 'package:fridge_tracker/goods/blocs/goods_cubit.dart' as _i541;
import 'package:fridge_tracker/goods/repositories/goods_repository.dart'
    as _i569;
import 'package:fridge_tracker/router.dart' as _i903;
import 'package:fridge_tracker/settings/blocs/app_info_cubit.dart' as _i586;
import 'package:fridge_tracker/settings/datasources/user_system_datasource.dart'
    as _i911;
import 'package:fridge_tracker/settings/repositories/settings_repository.dart'
    as _i1019;
import 'package:fridge_tracker/third_party_module.dart' as _i871;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:package_info_plus/package_info_plus.dart' as _i655;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appModule = _$AppModule();
    final thirdPartyModule = _$ThirdPartyModule();
    gh.factory<_i447.ConnectivityCubit>(() => _i447.ConnectivityCubit());
    gh.factory<_i27.PermissionCubit>(() => _i27.PermissionCubit());
    gh.singleton<_i903.AppRouter>(() => appModule.router);
    await gh.singletonAsync<_i655.PackageInfo>(
      () => thirdPartyModule.packageInfo,
      preResolve: true,
    );
    gh.lazySingleton<_i974.FirebaseFirestore>(() => thirdPartyModule.firestore);
    gh.singleton<_i169.AuthRepository>(() => _i169.AuthRepositoryImpl());
    gh.singleton<_i569.GoodsRepository>(() =>
        _i569.GoodsRepositoryImpl(firestore: gh<_i974.FirebaseFirestore>()));
    gh.singleton<_i911.UserSystemDataSource>(
        () => _i911.UserSystemDataSourceImpl(gh<_i655.PackageInfo>()));
    gh.factory<_i541.GoodsCubit>(
        () => _i541.GoodsCubit(gh<_i569.GoodsRepository>()));
    gh.factory<_i368.AuthCubit>(
        () => _i368.AuthCubit(gh<_i169.AuthRepository>()));
    gh.singleton<_i1019.SettingsRepository>(
        () => _i1019.SettingsRepositoryImpl(gh<_i911.UserSystemDataSource>()));
    gh.factory<_i586.AppInfoCubit>(() => _i586.AppInfoCubit(
        settingsRepository: gh<_i1019.SettingsRepository>()));
    return this;
  }
}

class _$AppModule extends _i375.AppModule {}

class _$ThirdPartyModule extends _i871.ThirdPartyModule {}
