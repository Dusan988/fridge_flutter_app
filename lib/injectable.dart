import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:fridge_tracker/injectable.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
Future<GetIt> configureDependencies() async => getIt.init();
