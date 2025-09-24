import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final ThemeData fridgeTheme = ThemeData(
  primaryColor: const Color(0xFF4CAF50),
  hintColor: const Color(0xFFFFC107),
  scaffoldBackgroundColor: const Color(0xFFF4F9F4),
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xFF4CAF50),
    foregroundColor: Colors.white,
    elevation: 2,
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: Color(0xFFFFC107),
    foregroundColor: Colors.black,
  ),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: Colors.white,
    contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide.none,
    ),
    hintStyle: const TextStyle(color: Colors.grey),
  ),
  cardTheme: CardThemeData(
    color: Colors.white,
    elevation: 2,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
    margin:  EdgeInsets.symmetric(vertical: 6.h, horizontal: 12.w),
  ),
  textTheme:  TextTheme(
    headlineMedium: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
    bodyMedium: TextStyle(fontSize: 16.sp),
  ),
  chipTheme: ChipThemeData(
    backgroundColor: Colors.green.shade100,
    selectedColor: Colors.green.shade300,
    labelStyle: const TextStyle(color: Colors.black),
    secondaryLabelStyle: const TextStyle(color: Colors.black),
    padding:  EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
  ),
);