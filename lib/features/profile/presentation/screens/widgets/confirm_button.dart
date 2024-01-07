import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constace.dart';
import '../../../../../core/widgets/custom_button.dart';

class ConfirmButton extends StatelessWidget {
  const ConfirmButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      text: 'Confirm',
      onPressed: () {},
      paddingHorizontal: 50.w,
      radius: 18.r,
      height: 35.h,
      buttonColor: Constance.kPrimaryColor,
    );
  }
}
