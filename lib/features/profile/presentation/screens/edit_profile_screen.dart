import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/core/constace.dart';
import 'package:task_app/core/widgets/custom_background.dart';
import 'package:task_app/core/widgets/custom_button.dart';
import 'package:task_app/features/profile/presentation/screens/widgets/confirm_button.dart';
import '../../../../core/utils/sized.dart';
import '../../../../core/utils/styles.dart';
import 'widgets/change_password_button.dart';
import 'widgets/profile_email_text_field.dart';
import 'widgets/profile_name_text_field.dart';

class EditProfileScreen extends StatelessWidget {
  EditProfileScreen({super.key});

  var profileNameController = TextEditingController();
  var profileEmailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Profile'),
        centerTitle: false,
      ),
      body: Container(
        decoration: customBackGround(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomSized.sizedHeight50,
              Text(
                'Name',
                style: Styles.style18,
              ),
              CustomSized.sizedHeight10,
              ProfileNameTextField(
                  profileNameController: profileNameController),
              CustomSized.sizedHeight20,
              Text(
                'Email',
                style: Styles.style18,
              ),
              CustomSized.sizedHeight10,
              ProfileEmailTextField(
                  profileEmailController: profileEmailController),
              const ChangePasswordButton(),
              CustomSized.sizedHeight24,
              const ConfirmButton(),
            ],
          ),
        ),
      ),
    );
  }
}
