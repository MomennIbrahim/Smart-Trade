import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_text_field.dart';

class EmailTextField extends StatelessWidget {
  const EmailTextField({super.key, required this.emailController});

  final TextEditingController emailController;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      labelColor: Colors.black54,
      fillColor: Colors.blueGrey[100]!,
      controller: emailController,
      keyBoardType: TextInputType.emailAddress,
      labelText: 'Enter email address',
      validatorText: 'email field is empty',
    );
  }
}
