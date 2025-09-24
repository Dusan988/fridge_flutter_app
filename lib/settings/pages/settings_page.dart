import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fridge_tracker/authentication/blocs/auth_cubit.dart';
import 'package:fridge_tracker/settings/widgets/app_info_widget.dart';

@RoutePage<void>()
class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Center(
                child: TextButton(
                  onPressed: () async {
                    await context.read<AuthCubit>().signOut();
                  },
                  child: Text('Sign Out'),
                ),
              ),
              SizedBox(height: 30.h),
              ApplicationInfo(),
            ],
          ),
        ),
      ),
    );
  }
}
