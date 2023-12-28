import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:task_app/core/utils/api_service.dart';
import 'package:task_app/core/utils/service_locator.dart';
import 'package:task_app/core/utils/sized.dart';
import 'package:task_app/features/authentication/data/repository/authentication_repository_implementation.dart';
import 'package:task_app/features/authentication/presentation/controller/user_login_cubit.dart';
import 'package:task_app/features/authentication/presentation/screens/widgets/auth_image_widget.dart';
import 'package:task_app/features/authentication/presentation/screens/widgets/email_text_field.dart';
import 'package:task_app/features/authentication/presentation/screens/widgets/password_text_field.dart';
import 'package:task_app/features/authentication/presentation/screens/widgets/sign_button.dart';
import 'package:task_app/features/authentication/presentation/screens/widgets/sign_up_text_button.dart';
import 'package:task_app/features/authentication/presentation/screens/widgets/sub_text.dart';
import 'package:task_app/features/authentication/presentation/screens/widgets/welcome_text.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserLoginCubit(getIt.get<AuthenticationRepositoryImplementation>()),
      child: BlocConsumer<UserLoginCubit, UserLoginState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            backgroundColor: Colors.white,
            body: Form(
              key: formKey,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  const AuthImageWidget(),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.0.w),
                    child: SizedBox(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height / 2,
                      child: Card(
                        elevation: .7,
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.all(12.0.w.h),
                          child: Column(
                            children: [
                              const WelcomeText(),
                              const SubText(),
                              CustomSized.sizedHeight24,
                              EmailTextField(emailController: emailController),
                              CustomSized.sizedHeight15,
                              PasswordTextField(
                                  passwordController: passwordController),
                              CustomSized.sizedHeight20,
                              SignInButton(
                                onPressed: () {
                                  if(formKey.currentState!.validate()) {
                                    UserLoginCubit.get(context).userLogin(
                                    email: emailController.text,
                                    password: passwordController.text,
                                  );
                                  }
                                },
                              ),
                              const Spacer(),
                              Padding(
                                padding: EdgeInsets.only(bottom: 22.0.h),
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Don\'t have any account?'),
                                    SignUpTextButton(),
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
            ),
          );
        },
      ),
    );
  }
}
