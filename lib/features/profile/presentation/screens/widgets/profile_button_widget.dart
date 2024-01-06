import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/sized.dart';
import '../../../../../core/utils/styles.dart';

class ProfileButtonWidget extends StatelessWidget {
  const ProfileButtonWidget({super.key, required this.text, required this.icon, this.style, required this.onPressed});

  final String text;
  final IconData icon;
  final TextStyle? style;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        onPressed();
      },
      child: Container(
        width: 150.w,
        padding: EdgeInsets.all(8.h.w),
        decoration: BoxDecoration(
            color: Colors.white30,
          borderRadius: BorderRadius.circular(20.r)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon),
            CustomSized.sizedWidth5,
            Text(
              text,
              style: style?? Styles.style18,
            ),
          ],
        ),
      ),
    );
  }
}
