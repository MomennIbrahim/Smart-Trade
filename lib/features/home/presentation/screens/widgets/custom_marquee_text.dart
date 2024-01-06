import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marquee/marquee.dart';
import '../../../../../core/constace.dart';

class CustomMarqueeText extends StatelessWidget {
  const CustomMarqueeText({super.key});

  @override
  Widget build(BuildContext context) {
    return   SizedBox(
      height: 20.h,
      child: Marquee(
        text: 'Some sample text that takes some space. And Happy New Year 2024',
        style: const TextStyle(fontWeight: FontWeight.bold,color: Constance.kYellowColor,),
        scrollAxis: Axis.horizontal,
        crossAxisAlignment: CrossAxisAlignment.start,
        blankSpace: 50.0.w,
        velocity: 100.0,
        startPadding: 16.w,
      ),
    );
  }
}
