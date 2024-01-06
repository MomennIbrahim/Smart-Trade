import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/core/constace.dart';
import 'package:task_app/core/utils/sized.dart';
import 'package:task_app/core/widgets/custom_app_bar.dart';
import 'package:task_app/core/widgets/custom_background.dart';
import 'package:task_app/core/widgets/custom_button.dart';
import 'package:task_app/features/profile/presentation/screens/widgets/old_passowrd_text_field.dart';
import '../../../../core/utils/styles.dart';
import 'widgets/confirm_new_passowrd_text_field.dart';
import 'widgets/new_passowrd_text_field.dart';

class ChangePasswordScreen extends StatelessWidget {
  ChangePasswordScreen({super.key});

  TextEditingController oldPasswordController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController confirmNewPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(appbarText: 'Change password'),
      body: Container(
        decoration: customBackGround(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 12.0.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Old Password',
                style: Styles.style18,
              ),
              CustomSized.sizedHeight5,
              OldPasswordTextField(
                  oldPasswordController: oldPasswordController),
              CustomSized.sizedHeight24,
              Text(
                'New Password',
                style: Styles.style18,
              ),
              CustomSized.sizedHeight5,
              NewPasswordTextField(
                  newPasswordController: newPasswordController),
              CustomSized.sizedHeight24,
              Text(
                'Confirm Password',
                style: Styles.style18,
              ),
              CustomSized.sizedHeight5,
              ConfirmNewPasswordTextField(
                  confirmNewPasswordController: confirmNewPasswordController),
              CustomSized.sizedHeight24,
              CustomButton(text: 'Change password', onPressed: (){},buttonColor: Constance.kPrimaryColor,paddingHorizontal: 70.w,)
            ],
          ),
        ),
      ),
    );
  }
}
