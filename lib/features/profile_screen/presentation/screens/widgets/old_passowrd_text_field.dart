import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_text_field.dart';

class OldPasswordTextField extends StatelessWidget {
  const OldPasswordTextField({super.key, required this.oldPasswordController});

  final TextEditingController oldPasswordController ;

  @override
  Widget build(BuildContext context) {
    return  CustomTextFormField(
      controller: oldPasswordController,
      keyBoardType: TextInputType.name,
      labelText: 'Enter current password',
      labelColor: Colors.white70,
      validatorText: 'Old Password field is required',
    );
  }
}
