import 'package:fridge_tracker/router.dart';
import 'package:injectable/injectable.dart';

@module
abstract class AppModule {
  @singleton
  AppRouter get router => AppRouter();
}
