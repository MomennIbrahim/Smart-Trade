import 'package:flutter/material.dart';
import 'package:task_app/features/profile/presentation/controller/update_password_cubit/update_password_cubit.dart';

import '../../../../../core/widgets/custom_text_field.dart';

class OldPasswordTextField extends StatelessWidget {
  const OldPasswordTextField({super.key, required this.oldPasswordController});

  final TextEditingController oldPasswordController ;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      controller: oldPasswordController,
      obscureText: UpdatePasswordCubit.get(context).isVisibilityOldPass,
      suffixIcon: IconButton(
          onPressed: () {
            UpdatePasswordCubit.get(context).changeVisibilityOldPass();
          },
          icon:  UpdatePasswordCubit.get(context).oldIcon
      ),
      keyBoardType: TextInputType.name,
      labelText: 'Enter current password',
      labelColor: Colors.white70,
      validatorText: 'Old Password field is required',
    );
  }
}
