import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

void successSnackBar({required BuildContext context,required String message}){
  showTopSnackBar(
    Overlay.of(context),
    CustomSnackBar.success(
      borderRadius: BorderRadius.circular(80.r),
      message: message,
      backgroundColor: Colors.green,
    ),
  );
}