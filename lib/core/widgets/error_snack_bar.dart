import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

void errorSnackBar({required BuildContext context, required String errMessage}){
  showTopSnackBar(
    Overlay.of(context),
    CustomSnackBar.error(
      borderRadius: BorderRadius.circular(100.r),
      message: errMessage,
    ),
  );
}