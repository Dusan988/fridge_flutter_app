import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fridge_tracker/authentication/blocs/auth_cubit.dart';
import 'package:fridge_tracker/authentication/blocs/auth_state.dart';
import 'package:fridge_tracker/core/theme/app_theme.dart';
import 'package:fridge_tracker/injectable.dart';
import 'package:fridge_tracker/router.dart';
import 'package:fridge_tracker/router.gr.dart';



class FridgeApp extends StatefulWidget {
  const FridgeApp({super.key});

  @override
  State<FridgeApp> createState() => _FridgeAppState();
}

class _FridgeAppState extends State<FridgeApp> with WidgetsBindingObserver {
  final AppRouter router = getIt();
  StreamSubscription? _subscription;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addObserver(this);
    _initCheck();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _subscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: fridgeTheme,
      debugShowCheckedModeBanner: false,
      routerConfig: router.config(
        includePrefixMatches: true,
        navigatorObservers: () => [AutoRouteObserver()],
      ),
      builder: (context, navigator) => BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) {},
        listenWhen: (oldState, newState) => oldState != newState,
        builder: (context, state) {
          return MediaQuery(
            data: MediaQuery.of(
              context,
            ).copyWith(textScaler: const TextScaler.linear(1.0)),
            child: navigator!,
          );
        },
      ),
    );
  }

  Future<void> _initCheck() async {
    _subscription = context.read<AuthCubit>().stream.listen((authState) {
      if (authState is AuthStateSignedIn || authState is AuthStateSignedUp) {
        router.replaceAll([const MainPageRoute()]);
      } else if (authState is AuthStateSignedOut) {
        router.popAndPush(const LoginPageRoute());
      }
    });

    await Future.delayed(const Duration(seconds: 2));
    if (!mounted) return;
  }
}
