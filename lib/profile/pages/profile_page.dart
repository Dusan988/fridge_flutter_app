import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fridge_tracker/authentication/blocs/auth_cubit.dart';
import 'package:fridge_tracker/authentication/blocs/auth_state.dart';
import 'package:fridge_tracker/core/widgets/fridge_app_bar.dart';
import 'package:fridge_tracker/settings/widgets/app_info_widget.dart';

@RoutePage<void>()
class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FridgeAppBar(
        backgroundColor: Colors.green,
        titleWidget: Center(
          child: Text('Profile', style: TextStyle(color: Colors.white)),
        ),
      ),
      body: BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          final user = state.mapOrNull(
            signedIn: (data) => data.user,
            signedUp: (data) => data.user,
          );
          return Center(
            child: ListView(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15.w, top: 30.h),
                  child: Text('User info', style: TextStyle(fontSize: 24.sp)),
                ),
                ListTile(
                  title: Text('Username', style: TextStyle(fontSize: 18.sp)),
                  trailing: Text(
                    user?.email ?? '',
                    style: TextStyle(fontSize: 14.sp),
                  ),
                ),
                SizedBox(height: 70.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.green,
                      disabledForegroundColor: Colors.grey,
                      maximumSize: Size(80.w, 40.h),
                      minimumSize: Size(80.w, 40.h),
                      padding: EdgeInsets.zero,
                    ),
                    onPressed: () async {
                      await context.read<AuthCubit>().signOut();
                    },
                    child: Text(
                      'Sign Out',
                      style: TextStyle(color: Colors.black54, fontSize: 16.sp),
                    ),
                  ),
                ),
                SizedBox(height: 80.h),
                Center(child: ApplicationInfo()),
              ],
            ),
          );
        },
      ),
    );
  }
}
