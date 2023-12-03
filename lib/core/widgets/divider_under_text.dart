import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DividerUnderText extends StatelessWidget {
  const DividerUnderText({super.key, this.width = 0});

  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 100.w + width.w,
        child: const Divider(
          color: Colors.grey,
          thickness: 1,
        ));
  }
}
