import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/widgets/custom_button.dart';

class SaveAndRestButton extends StatelessWidget {
  const SaveAndRestButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CustomButton(
          text: 'Save',
          onPressed: () {},
          width: 80.w,
          buttonColor: Colors.blue,
        ),
        Container(
          decoration:
          BoxDecoration(border: Border.all(color: Colors.blue)),
          child: CustomButton(
            paddingHorizontal: 0.0,
            text: 'Reset',
            onPressed: () {},
            width: 80.w,
            buttonColor: Colors.transparent,
          ),
        ),
      ],
    );
  }
}
