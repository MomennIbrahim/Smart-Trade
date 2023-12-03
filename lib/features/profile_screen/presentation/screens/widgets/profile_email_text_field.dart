import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_text_field.dart';

class ProfileEmailTextField extends StatelessWidget {
  const ProfileEmailTextField({super.key, required this.profileEmailController});

  final TextEditingController profileEmailController ;

  @override
  Widget build(BuildContext context) {
    return  CustomTextFormField(
      controller: profileEmailController,
      keyBoardType: TextInputType.name,
      labelText: 'Super_Admin@gmail.com',
      labelColor: Colors.white,
      validatorText: 'email field is required',
    );
  }
}
