import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_text_field.dart';

class PasswordTextField extends StatelessWidget {
  const PasswordTextField({super.key, required this.passwordController});

  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      labelColor: Colors.black54,
      fillColor: Colors.blueGrey[100]!,
      controller: passwordController,
      keyBoardType: TextInputType.visiblePassword,
      labelText: 'Enter password',
      validatorText: 'password field is empty',
    );
  }
}
