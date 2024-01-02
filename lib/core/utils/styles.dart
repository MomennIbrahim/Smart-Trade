import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/core/constace.dart';

abstract class Styles {
  static TextStyle style12 = TextStyle(
    fontSize: 11.sp,
    fontWeight: FontWeight.w400,
    color: Constance.cWhite,
  );
  static TextStyle style14 = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: Constance.cWhite,
  );

  static TextStyle styleYellow14 = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: Constance.kYellowColor,
  );

  static TextStyle styleBold14 = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.bold,
    color: Constance.cWhite,
  );

  static TextStyle style16 = TextStyle(
    fontSize: 16.sp,
    color: Constance.cWhite,
  );

  static TextStyle style18Yellow = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.w700,
    color: const Color(0xFFF2A818),
  );

  static TextStyle style18 = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.w700,
    color: Colors.white,
  );

  static TextStyle style20 = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  static TextStyle style23 = TextStyle(
    fontSize: 23.sp,
    fontWeight: FontWeight.w400,
    color: Constance.cWhite,
  );

  static TextStyle style35 = TextStyle(
    color: Constance.cWhite,
    fontSize: 35.0.sp,
    fontWeight: FontWeight.bold,
  );
}
