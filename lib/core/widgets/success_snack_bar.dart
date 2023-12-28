import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/core/widgets/custom_navigator.dart';
import 'package:task_app/features/home/presentation/screens/home_screen.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

void successSnackBar({required BuildContext context}){
  showTopSnackBar(
    Overlay.of(context),
    CustomSnackBar.success(
      borderRadius: BorderRadius.circular(80.r),
      message: 'Login Successfully',
      backgroundColor: Colors.green,
    ),
  );
  customNavigator(context: context, widget: HomeScreen());
}