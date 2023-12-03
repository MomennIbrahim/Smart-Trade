import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_text_field.dart';

class NewPasswordTextField extends StatelessWidget {
  const NewPasswordTextField({super.key, required this.newPasswordController});

  final TextEditingController newPasswordController ;

  @override
  Widget build(BuildContext context) {
    return  CustomTextFormField(
      controller: newPasswordController,
      keyBoardType: TextInputType.name,
      labelText: 'Enter new password',
      labelColor: Colors.white70,
      validatorText: 'new Password field is required',
    );
  }
}
