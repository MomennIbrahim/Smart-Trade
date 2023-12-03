import 'package:flutter/material.dart';
import 'package:task_app/core/widgets/custom_navigator.dart';
import 'package:task_app/features/authentication/presentation/screens/login_screen.dart';

class SignInTextButton extends StatelessWidget {
  const SignInTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: (){
      customNavigatorAndReplacement(context: context, widget: LoginScreen());
    }, child: const Text('Sign in'));
  }
}
