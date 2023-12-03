import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PointsRow extends StatelessWidget {
  const PointsRow({super.key, required this.text, required this.value});

  final String text;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 16.0.w),
          child: Text(text,
              style: TextStyle(
                  color: Colors.white, fontSize: 16.sp)),
        ),
        Expanded(
          child: Slider(
            min: 0,
            max: 10,
            value: 5,
            onChanged: (value) {},
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 16.0.w),
          child: Text(value.toString(),
              style: TextStyle(
                  color: Colors.white, fontSize: 16.sp)),
        ),
      ],
    );
  }
}
