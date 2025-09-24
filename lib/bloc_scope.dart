import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fridge_tracker/core/blocs/connectivity_cubit.dart';
import 'package:fridge_tracker/core/blocs/permission_cubit.dart';
import 'package:fridge_tracker/goods/blocs/goods_cubit.dart';
import 'package:fridge_tracker/injectable.dart';
import 'package:fridge_tracker/settings/blocs/app_info_cubit.dart';

import 'authentication/blocs/auth_cubit.dart';

class BlocScope extends StatefulWidget {
  const BlocScope({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  State<BlocScope> createState() => _BlocScopeState();
}

class _BlocScopeState extends State<BlocScope> {
  @override
  Widget build(BuildContext context) => MultiBlocProvider(
    providers: [
      BlocProvider<PermissionCubit>(create: (_) => getIt()),
      BlocProvider<AuthCubit>(create: (_) => getIt()),
      BlocProvider<ConnectivityCubit>(lazy: false, create: (_) => getIt()),
      BlocProvider<AppInfoCubit>(create: (_) => getIt()),
      BlocProvider<GoodsCubit>(create: (_) => getIt()),

    ],
    child: widget.child
  );
}
