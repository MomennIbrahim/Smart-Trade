import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/core/utils/sized.dart';
import 'package:task_app/core/utils/styles.dart';
import 'package:task_app/core/widgets/custom_button.dart';
import 'package:task_app/features/authentication/presentation/screens/widgets/auth_image_widget.dart';
import 'package:task_app/features/authentication/presentation/screens/widgets/email_text_field.dart';
import 'package:task_app/features/authentication/presentation/screens/widgets/password_text_field.dart';
import 'package:task_app/features/authentication/presentation/screens/widgets/sign_in_text_button.dart';
import 'package:task_app/features/authentication/presentation/screens/widgets/user_name_text_field.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var userNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        alignment: Alignment.center,
        children: [
          const AuthImageWidget(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0.w),
            child: SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 1.8,
              child: Card(
                elevation: 0.7,
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.all(12.0.w.h),
                  child: Column(
                    children: [
                      Text(
                        'Create New Account',
                        style:
                            Styles.style18.copyWith(color: Colors.blueAccent),
                      ),
                      Text(
                        'Get your free Smart Trade account now',
                        style: Styles.style12.copyWith(color: Colors.black54),
                      ),
                      CustomSized.sizedHeight24,
                      EmailTextField(emailController: emailController),
                      CustomSized.sizedHeight15,
                      UserNameTextField(userNameController: userNameController),
                      CustomSized.sizedHeight15,
                      PasswordTextField(passwordController: passwordController),
                      CustomSized.sizedHeight20,
                      CustomButton(
                        text: 'Sign in',
                        onPressed: () {},
                        buttonColor: Colors.blue,
                      ),
                      const Spacer(),
                      Padding(
                        padding: EdgeInsets.only(bottom: 22.0.h),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Already have an account?'),
                            SignInTextButton(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
