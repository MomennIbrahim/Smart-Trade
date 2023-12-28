import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/core/utils/sized.dart';
import 'package:task_app/core/utils/styles.dart';
import 'package:task_app/core/widgets/custom_navigator.dart';
import 'package:task_app/features/authentication/presentation/screens/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  late Animation<double> fadeInAnimation;

  @override
  void initState() {
    super.initState();

    initSlidingAnimation();
    navigateToOtherPage();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,

        /// stretch y3ny kol 7aga gwa al column  bta5od al width bta3 al screen
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 50.0.w),
            child: AnimatedBuilder(
              animation: slidingAnimation,
              builder: (BuildContext context, Widget? child) {
                return FadeTransition(
                  opacity: fadeInAnimation,
                  child: Container(
                    height: 300,
                    width: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100.r),
                        image: const DecorationImage(
                          image: AssetImage(
                            'assets/images/channels4_profile.jpg',
                          ),
                          fit: BoxFit.cover,
                        )),
                  ),
                );
              },
            ),
          ),
          CustomSized.sizedHeight15,
          slidingText(),
        ],
      ),
    );
  }

  slidingText() {
    return AnimatedBuilder(
      animation: slidingAnimation,
      builder: (context, _) => SlideTransition(
          position: slidingAnimation,
          child: Text(
            'Smart Trade',
            style: Styles.style35,
            textAlign: TextAlign.center,
          )),
    );
  }

  void initSlidingAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 15), end: Offset.zero)
            .animate(animationController);

    fadeInAnimation =
        CurvedAnimation(parent: animationController, curve: Curves.easeInOut);

    animationController.forward();
  }

  void navigateToOtherPage() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        customNavigatorAndReplacement(context: context, widget: const LoginScreen());
      },
    );
  }
}
