import 'package:flutter/material.dart';
import '../../../../../core/widgets/custom_button.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({super.key, required this.onPressed});

  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      text: 'Sign in',
      onPressed: () {
        onPressed();
      },
      buttonColor: Colors.blue,
    );
  }
}
