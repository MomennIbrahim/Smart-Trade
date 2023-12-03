import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_text_field.dart';

class ProfileNameTextField extends StatelessWidget {
  const ProfileNameTextField({super.key, required this.profileNameController});

  final TextEditingController profileNameController ;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      controller: profileNameController,
      keyBoardType: TextInputType.name,
      labelText: 'Super Admin',
      labelColor: Colors.white,
      validatorText: 'name field is required',
    );
  }
}
