import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fridge_tracker/app.dart';
import 'package:fridge_tracker/bloc_scope.dart';
import 'package:fridge_tracker/core/blocs/permission_cubit.dart';
import 'package:fridge_tracker/core/logger/logger.dart';
import 'package:fridge_tracker/injectable.dart';
import 'package:firebase_core/firebase_core.dart';


import 'core/blocs/app_bloc_observer.dart';

void main() async {
  runZonedGuarded(
    () async {
      await initialSetup();

      runApp(
        ScreenUtilInit(
          designSize: const Size(375, 812),
          builder: (_, __) => const BlocScope(child: FridgeApp()),
        ),
      );
    },
    (error, stack) => Logger().e(
      'Uncaught error in runZonedGuarded',
      error: error,
      trace: stack,
    ),
  );
}

Future<void> initialSetup() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = AppBlocObserver();
  await Firebase.initializeApp();
  await configureDependencies();
  await SystemChrome.setEnabledSystemUIMode(
    SystemUiMode.manual,
    overlays: SystemUiOverlay.values,
  );
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
}
