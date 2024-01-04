import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constace.dart';

abstract class CustomThemeData {
 static ThemeData themeData = ThemeData(
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
              textStyle: const TextStyle(color: Constance.kPrimaryColor))),
      scaffoldBackgroundColor: Colors.black,
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: Constance.kPrimaryColor,
      ),
      sliderTheme: const SliderThemeData(
          activeTrackColor: Colors.blueAccent,
          thumbShape: RoundSliderThumbShape(enabledThumbRadius: 0.0)),
      fontFamily: 'Open Sans',
      iconTheme: const IconThemeData(color: Colors.white),
      scrollbarTheme: const ScrollbarThemeData().copyWith(
          radius: const Radius.circular(20.0),
          thumbVisibility: MaterialStateProperty.all(true),
          thumbColor: MaterialStateProperty.all(Colors.yellow),
          crossAxisMargin: -10),
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.black26,
          iconTheme: const IconThemeData(
            color: Colors.white,
          ),
          titleTextStyle: TextStyle(
              color: Colors.white, fontSize: 22.5.sp, fontFamily: 'Lato')));
}
