import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/core/constace.dart';
import 'package:task_app/core/utils/local_storage.dart';
import 'package:task_app/core/utils/service_locator.dart';
import 'package:task_app/core/utils/sized.dart';
import 'package:task_app/core/widgets/error_snack_bar.dart';
import 'package:task_app/core/widgets/success_snack_bar.dart';
import 'package:task_app/features/authentication/data/repository/authentication_repository_implementation.dart';
import 'package:task_app/features/authentication/presentation/controller/user_login_cubit.dart';
import 'package:task_app/features/authentication/presentation/screens/widgets/auth_image_widget.dart';
import 'package:task_app/features/authentication/presentation/screens/widgets/email_text_field.dart';
import 'package:task_app/features/authentication/presentation/screens/widgets/password_text_field.dart';
import 'package:task_app/features/authentication/presentation/screens/widgets/sign_in_button.dart';
import 'package:task_app/features/authentication/presentation/screens/widgets/sign_up_text_button.dart';
import 'package:task_app/features/authentication/presentation/screens/widgets/sub_text.dart';
import 'package:task_app/features/authentication/presentation/screens/widgets/welcome_text.dart';
import 'package:task_app/features/home/presentation/screens/home_screen.dart';

import '../../../../core/widgets/custom_navigator.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          UserLoginCubit(getIt.get<AuthenticationRepositoryImplementation>()),
      child: BlocConsumer<UserLoginCubit, UserLoginState>(
        listener: (context, state) {
          if (state is UserLoginFailureState) {
            errorSnackBar(context: context, errMessage: state.errMessage);
          }
          if (state is UserLoginSuccessState) {
            CacheHelper.saveData(key: 'token', value: state.userModel.accessToken).then((value){
              accessToken = state.userModel.accessToken!;
              successSnackBar(context: context,message: 'Login Successfully');
              customNavigator(
                  context: context,
                  widget: customNavigatorAndRemoveUntil(
                      context: context, widget: HomeScreen()));
            });
          }
        },
        builder: (context, state) {
          var loginCubit = UserLoginCubit.get(context);
          return Scaffold(
            backgroundColor: Colors.white,
            body: Form(
              key: loginCubit.formKey,
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
                        elevation: 0.7,
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.all(12.0.w.h),
                          child: Column(
                            children: [
                              const WelcomeText(),
                              const SubText(),
                              CustomSized.sizedHeight24,
                              EmailTextField(
                                  emailController: loginCubit.emailController),
                              CustomSized.sizedHeight15,
                              PasswordTextField(
                                suffixIcon: IconButton(
                                    onPressed: () {
                                      loginCubit.changeVisibility();
                                    },
                                    icon: loginCubit.icon
                                ),
                                  obscure: loginCubit.isVisibility,
                                  passwordController:
                                      loginCubit.passwordController),
                              CustomSized.sizedHeight20,
                              const SignInButton(),
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
