// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;
import 'package:fridge_tracker/authentication/pages/login_page.dart' as _i4;
import 'package:fridge_tracker/goods/pages/add_item_page.dart' as _i1;
import 'package:fridge_tracker/goods/pages/expired_items_page.dart' as _i2;
import 'package:fridge_tracker/goods/pages/home_page.dart' as _i3;
import 'package:fridge_tracker/goods/pages/main_page.dart' as _i5;
import 'package:fridge_tracker/profile/pages/profile_page.dart' as _i6;
import 'package:fridge_tracker/settings/pages/settings_page.dart' as _i7;

abstract class $AppRouter extends _i8.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    AddItemPageRoute.name: (routeData) {
      final args = routeData.argsAs<AddItemPageRouteArgs>();
      return _i8.AutoRoutePage<void>(
        routeData: routeData,
        child: _i1.AddItemPage(
          key: args.key,
          userId: args.userId,
        ),
      );
    },
    ExpiredItemsPageRoute.name: (routeData) {
      return _i8.AutoRoutePage<void>(
        routeData: routeData,
        child: const _i2.ExpiredItemsPage(),
      );
    },
    HomePageRoute.name: (routeData) {
      return _i8.AutoRoutePage<void>(
        routeData: routeData,
        child: const _i3.HomePage(),
      );
    },
    LoginPageRoute.name: (routeData) {
      return _i8.AutoRoutePage<void>(
        routeData: routeData,
        child: const _i4.LoginPage(),
      );
    },
    MainPageRoute.name: (routeData) {
      return _i8.AutoRoutePage<void>(
        routeData: routeData,
        child: const _i5.MainPage(),
      );
    },
    ProfilePageRoute.name: (routeData) {
      return _i8.AutoRoutePage<void>(
        routeData: routeData,
        child: const _i6.ProfilePage(),
      );
    },
    SettingsPageRoute.name: (routeData) {
      return _i8.AutoRoutePage<void>(
        routeData: routeData,
        child: const _i7.SettingsPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.AddItemPage]
class AddItemPageRoute extends _i8.PageRouteInfo<AddItemPageRouteArgs> {
  AddItemPageRoute({
    _i9.Key? key,
    required String userId,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          AddItemPageRoute.name,
          args: AddItemPageRouteArgs(
            key: key,
            userId: userId,
          ),
          initialChildren: children,
        );

  static const String name = 'AddItemPageRoute';

  static const _i8.PageInfo<AddItemPageRouteArgs> page =
      _i8.PageInfo<AddItemPageRouteArgs>(name);
}

class AddItemPageRouteArgs {
  const AddItemPageRouteArgs({
    this.key,
    required this.userId,
  });

  final _i9.Key? key;

  final String userId;

  @override
  String toString() {
    return 'AddItemPageRouteArgs{key: $key, userId: $userId}';
  }
}

/// generated route for
/// [_i2.ExpiredItemsPage]
class ExpiredItemsPageRoute extends _i8.PageRouteInfo<void> {
  const ExpiredItemsPageRoute({List<_i8.PageRouteInfo>? children})
      : super(
          ExpiredItemsPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'ExpiredItemsPageRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i3.HomePage]
class HomePageRoute extends _i8.PageRouteInfo<void> {
  const HomePageRoute({List<_i8.PageRouteInfo>? children})
      : super(
          HomePageRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomePageRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i4.LoginPage]
class LoginPageRoute extends _i8.PageRouteInfo<void> {
  const LoginPageRoute({List<_i8.PageRouteInfo>? children})
      : super(
          LoginPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginPageRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i5.MainPage]
class MainPageRoute extends _i8.PageRouteInfo<void> {
  const MainPageRoute({List<_i8.PageRouteInfo>? children})
      : super(
          MainPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainPageRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i6.ProfilePage]
class ProfilePageRoute extends _i8.PageRouteInfo<void> {
  const ProfilePageRoute({List<_i8.PageRouteInfo>? children})
      : super(
          ProfilePageRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfilePageRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i7.SettingsPage]
class SettingsPageRoute extends _i8.PageRouteInfo<void> {
  const SettingsPageRoute({List<_i8.PageRouteInfo>? children})
      : super(
          SettingsPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsPageRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}
