import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/core/utils/styles.dart';

class CustomAnimationText extends StatefulWidget {
  const CustomAnimationText({super.key});

  @override
  State<CustomAnimationText> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<CustomAnimationText>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  late Animation<double> fadeInAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
  }
  @override
  void dispose() {
    animationController;
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          slidingText(),
          fadeInText(),
        ],
      ),
    );
  }

  slidingText() {
    return AnimatedBuilder(
      animation: slidingAnimation,
      builder: (context, _) => SlideTransition(
          position: slidingAnimation,
          child: Padding(
            padding: EdgeInsets.only(right: 100.0.w),
            child: Text(
              'Smart',
              style: Styles.style35,
            ),
          )),
    );
  }

  fadeInText() {
    return FadeTransition(
        opacity: fadeInAnimation,
        child: Text(
          'Trade',
          style: Styles.style35,
        ));
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1200));
    slidingAnimation =
        Tween<Offset>(begin: const Offset(15, 0), end: Offset.zero)
            .animate(animationController);

    fadeInAnimation =
        Tween<double>(begin: 0.0, end: 1.0).animate(animationController);

    animationController.forward();
  }
}
