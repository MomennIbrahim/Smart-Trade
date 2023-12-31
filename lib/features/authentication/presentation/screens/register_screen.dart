import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/core/utils/service_locator.dart';
import 'package:task_app/core/utils/sized.dart';
import 'package:task_app/core/utils/styles.dart';
import 'package:task_app/features/authentication/data/repository/authentication_repository_implementation.dart';
import 'package:task_app/features/authentication/presentation/controller/register_cubit.dart';
import 'package:task_app/features/authentication/presentation/screens/widgets/auth_image_widget.dart';
import 'package:task_app/features/authentication/presentation/screens/widgets/email_text_field.dart';
import 'package:task_app/features/authentication/presentation/screens/widgets/password_confirmation_text_field.dart';
import 'package:task_app/features/authentication/presentation/screens/widgets/password_text_field.dart';
import 'package:task_app/features/authentication/presentation/screens/widgets/sign_in_text_button.dart';
import 'package:task_app/features/authentication/presentation/screens/widgets/sign_up_button.dart';
import 'package:task_app/features/authentication/presentation/screens/widgets/user_name_text_field.dart';

import '../../../../core/widgets/error_snack_bar.dart';
import '../../../../core/widgets/success_snack_bar.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          RegisterCubit(getIt.get<AuthenticationRepositoryImplementation>()),
      child: BlocConsumer<RegisterCubit, RegisterState>(
        listener: (context, state) {
          if (state is UserRegisterFailureState) {
            errorSnackBar(context: context, errMessage: state.errMessage);
          }
          if (state is UserRegisterSuccessState) {
            successSnackBar(context: context);
          }
        },
        builder: (context, state) {
          var registerCubit = RegisterCubit.get(context);
          return Scaffold(
            backgroundColor: Colors.white,
            body: Form(
              key: registerCubit.formKey,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  const AuthImageWidget(),
                  SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30.0.w),
                      child: SizedBox(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height / 1.4,
                        child: Card(
                          elevation: 0.7,
                          color: Colors.white,
                          child: Padding(
                            padding: EdgeInsets.all(12.0.w.h),
                            child: Column(
                              children: [
                                Text(
                                  'Create New Account',
                                  style: Styles.style18
                                      .copyWith(color: Colors.blueAccent),
                                ),
                                Text(
                                  'Get your free Smart Trade account now',
                                  style: Styles.style12
                                      .copyWith(color: Colors.black54),
                                ),
                                CustomSized.sizedHeight24,
                                EmailTextField(
                                    emailController: registerCubit.emailController),
                                CustomSized.sizedHeight15,
                                UserNameTextField(
                                    userNameController:
                                        registerCubit.userNameController),
                                CustomSized.sizedHeight15,
                                PasswordTextField(
                                    passwordController:
                                        registerCubit.passwordController),
                                CustomSized.sizedHeight15,
                                PasswordConfirmationTextField(
                                    passwordConfirmationController: registerCubit
                                        .passwordConfirmationController),
                                CustomSized.sizedHeight20,
                                const SignUpButton(),
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
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
