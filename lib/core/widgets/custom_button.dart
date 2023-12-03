import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.buttonColor = Colors.white,
    this.radius = 4.0,
    this.width = double.infinity,
    this.height = 40.0,
    this.paddingHorizontal = 16.0,
  });

  final String text;
  final Function onPressed;
  final Color buttonColor;
  final double radius;
  final double width;
  final double height;
  final double paddingHorizontal;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: paddingHorizontal),
      child: SizedBox(
        width: width,
        height: height,
        child: MaterialButton(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius)),
          onPressed: () {
            onPressed();
          },
          color: buttonColor,
          child: Text(
            text,
            style: TextStyle(color: Colors.white,fontSize: 12.sp),
          ),
        ),
      ),
    );
  }
}
