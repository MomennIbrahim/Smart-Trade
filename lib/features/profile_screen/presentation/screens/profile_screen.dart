import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/core/constace.dart';
import 'package:task_app/core/utils/sized.dart';
import 'package:task_app/core/utils/styles.dart';
import 'package:task_app/core/widgets/custom_app_bar.dart';
import 'package:task_app/core/widgets/custom_background.dart';
import 'package:task_app/features/profile_screen/presentation/screens/widgets/change_password_button.dart';
import 'package:task_app/features/profile_screen/presentation/screens/widgets/profile_email_text_field.dart';
import 'package:task_app/features/profile_screen/presentation/screens/widgets/profile_name_text_field.dart';
import 'package:task_app/features/profile_screen/presentation/screens/widgets/update_button.dart';
import 'package:task_app/features/profile_screen/presentation/screens/widgets/user_name.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});

  var profileNameController = TextEditingController();
  var profileEmailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(appbarText: 'My Profile'),
      body: Container(
        decoration: customBackGround(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 12.0.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const UserName(),
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
              const UpdateButton(),
            ],
          ),
        ),
      ),
    );
  }
}
