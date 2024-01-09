import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_text_field.dart';
import '../../controller/update_password_cubit/update_password_cubit.dart';

class NewPasswordTextField extends StatelessWidget {
  const NewPasswordTextField({super.key, required this.newPasswordController});

  final TextEditingController newPasswordController ;

  @override
  Widget build(BuildContext context) {
    return  CustomTextFormField(
      obscureText: UpdatePasswordCubit.get(context).isVisibilityNewPass,
      suffixIcon: IconButton(
          onPressed: () {
            UpdatePasswordCubit.get(context).changeVisibilityNewPass();
          },
          icon:  UpdatePasswordCubit.get(context).newPassIcon
      ),
      controller: newPasswordController,
      keyBoardType: TextInputType.name,
      labelText: 'Enter new password',
      labelColor: Colors.white70,
      validatorText: 'new Password field is required',
    );
  }
}
