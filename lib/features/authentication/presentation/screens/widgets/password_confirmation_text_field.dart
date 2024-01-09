import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_text_field.dart';

class PasswordConfirmationTextField extends StatelessWidget {
  const PasswordConfirmationTextField({super.key, required this.passwordConfirmationController});

  final TextEditingController passwordConfirmationController;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      labelColor: Colors.black54,
      fillColor: Colors.blueGrey[100]!,
      style: const TextStyle(color: Colors.black),
      controller: passwordConfirmationController,
      keyBoardType: TextInputType.visiblePassword,
      labelText: 'Enter password confirmation',
      validatorText: 'password confirmation field is empty',
    );
  }
}
