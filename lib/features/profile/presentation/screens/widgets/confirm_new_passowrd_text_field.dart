import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_text_field.dart';
import '../../controller/update_password_cubit/update_password_cubit.dart';

class ConfirmNewPasswordTextField extends StatelessWidget {
  const ConfirmNewPasswordTextField(
      {super.key, required this.confirmNewPasswordController});

  final TextEditingController confirmNewPasswordController;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      focusNode: UpdatePasswordCubit.get(context).textFieldFocusNode,
      obscureText: true,
      controller: confirmNewPasswordController,
      keyBoardType: TextInputType.name,
      labelText: 'Enter new password',
      labelColor: Colors.white70,
      validatorText: 'new Password field is required',
    );
  }
}
