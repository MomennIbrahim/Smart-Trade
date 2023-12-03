import 'package:flutter/material.dart';
import 'package:task_app/core/widgets/custom_navigator.dart';
import 'package:task_app/features/authentication/presentation/screens/register_screen.dart';

class SignUpTextButton extends StatelessWidget {
  const SignUpTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          customNavigatorAndReplacement(
              context: context, widget: RegisterScreen());
        },
        child: const Text('Sign up'));
  }
}
