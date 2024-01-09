import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_text_field.dart';

class UserNameTextField extends StatelessWidget {
  const UserNameTextField({super.key, required this.userNameController});

  final TextEditingController userNameController;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      labelColor: Colors.black54,
      fillColor: Colors.blueGrey[100]!,
      style: const TextStyle(color: Colors.black),
      controller: userNameController,
      keyBoardType: TextInputType.emailAddress,
      labelText: 'Enter user name',
      validatorText: 'user name field is empty',
    );
  }
}
