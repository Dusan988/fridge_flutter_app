import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fridge_tracker/settings/blocs/app_info_cubit.dart';

class ApplicationInfo extends StatelessWidget {
  const ApplicationInfo({super.key});

  @override
  Widget build(BuildContext context) => BlocBuilder<AppInfoCubit, AppInfoState>(
    buildWhen: (AppInfoState previous, AppInfoState current) =>
        previous.applicationVersion != current.applicationVersion,
    builder: (context, state) => Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
      child: Text(
        'App version : ${state.applicationVersion??'1.0.0'}',
        style: TextStyle(fontSize: 16.sp),
      ),
    ),
  );
}
