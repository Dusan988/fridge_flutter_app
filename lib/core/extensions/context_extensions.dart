import 'package:flutter/material.dart';
import 'package:fridge_tracker/injectable.dart';
import 'package:fridge_tracker/router.dart';

extension ContextExtension on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;

  AppRouter get rootRouter => getIt<AppRouter>();

  // AppLocalizations get localizations => AppLocalizations.of(this)!;
  //
  // SettingsCubit get settingsCubit => read<SettingsCubit>();

  MediaQueryData get mediaQuery => MediaQuery.of(this);

  bool get hasTopPadding => mediaQuery.padding.top != 0;

  bool get hasBottomPadding => mediaQuery.padding.bottom != 0;

  double get topPadding => mediaQuery.padding.top;

  double get bottomPadding => mediaQuery.padding.bottom;

  double get leftPadding => mediaQuery.padding.left;

  double get rightPadding => mediaQuery.padding.right;

}