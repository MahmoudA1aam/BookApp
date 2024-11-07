import 'package:book_app/core/theming/colors_app.dart';
import 'package:book_app/core/theming/font_wight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextApp {
  static TextStyle font18WithSemiBold = TextStyle(
      fontWeight: FontWeightHelper.semiBold,
      fontSize: 18.sp,
      color: Colors.white);
  static TextStyle font18witheGrayMedium = TextStyle(
      fontWeight: FontWeightHelper.medium,
      fontSize: 18.sp,
      color: ColorsApp.witheGray);
  static TextStyle font20WithRegular = TextStyle(
      fontWeight: FontWeightHelper.regular,
      fontSize: 20.sp,
      color: Colors.white);
  static TextStyle font14witheGrayMedium = TextStyle(
      fontWeight: FontWeightHelper.medium,
      fontSize: 14.sp,
      color: ColorsApp.witheGray);
  static TextStyle font16witheMedium = TextStyle(
      fontWeight: FontWeightHelper.medium,
      fontSize: 16.sp,
      color: Colors.white);
  static TextStyle font16witheBold = TextStyle(
      fontWeight: FontWeightHelper.bold,
      fontSize: 16.sp,
      color: Colors.white);
  static TextStyle font16BlackBold = TextStyle(
      fontWeight: FontWeightHelper.bold,
      fontSize: 16.sp,
      color: Colors.black);
  static TextStyle font14witheGrayRegular = TextStyle(
      fontWeight: FontWeightHelper.regular,
      fontSize: 14.sp,
      color: const Color(0xff707070));
  static TextStyle font30WithRegular = TextStyle(
      fontWeight: FontWeightHelper.regular,
      fontSize: 30.sp,
      color: Colors.white);
}
