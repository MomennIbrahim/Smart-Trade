import 'package:flutter/material.dart';
import 'package:task_app/core/widgets/custom_navigator.dart';
import 'package:task_app/features/home/presentation/screens/home_screen.dart';

import '../../../../../core/widgets/custom_button.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      text: 'Sign in',
      onPressed: () {
        customNavigator(context: context, widget: HomeScreen());
      },
      buttonColor: Colors.blue,
    );
  }
}
