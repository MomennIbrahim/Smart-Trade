import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constace.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/custom_button.dart';

class UpdateButton extends StatelessWidget {
  const UpdateButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      text: 'Update',
      onPressed: () {},
      buttonColor: Constance.kPrimaryColor,
      paddingHorizontal: 80.w,
    );
  }
}
