import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class AnimatedLoading extends StatelessWidget {
  const AnimatedLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: LoadingAnimationWidget.threeArchedCircle(
      size: 40.w,
      color: Colors.yellow,
    ));
  }
}
