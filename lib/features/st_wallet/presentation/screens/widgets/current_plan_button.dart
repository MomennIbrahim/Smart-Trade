import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/widgets/custom_button.dart';

class CurrentPlanButton extends StatelessWidget {
  const CurrentPlanButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 40.0.w,
        vertical: 32.h,
      ),
      child: Container(
          decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
          child: CustomButton(
            paddingHorizontal: 0.0,
            text: 'Your current plan',
            onPressed: () {},
            buttonColor: Colors.transparent,
          )),
    );
  }
}
