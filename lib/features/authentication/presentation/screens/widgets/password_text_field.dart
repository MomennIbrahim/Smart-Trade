import 'package:flutter/material.dart';
import '../../../../../core/widgets/custom_text_field.dart';

class PasswordTextField extends StatelessWidget {
  const PasswordTextField(
      {super.key,
      required this.passwordController,
      required this.obscure,
      required this.suffixIcon});

  final TextEditingController passwordController;
  final bool obscure;
  final Widget suffixIcon;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      obscureText: obscure,
      labelColor: Colors.black54,
      fillColor: Colors.blueGrey[100]!,
      style: const TextStyle(color: Colors.black),
      controller: passwordController,
      keyBoardType: TextInputType.visiblePassword,
      labelText: 'Enter password',
      suffixIcon: suffixIcon,
      validatorText: 'password field is empty',
    );
  }
}
