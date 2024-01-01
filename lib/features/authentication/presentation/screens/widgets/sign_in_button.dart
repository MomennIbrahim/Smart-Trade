import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_app/core/widgets/animated_loading.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../controller/user_login_cubit.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserLoginCubit, UserLoginState>(
        builder: (context, state) {
          return state is! UserLoginLoadingState?  CustomButton(
            text: 'Sign in',
            onPressed: () {
              if (UserLoginCubit.get(context).formKey.currentState!.validate()) {
                UserLoginCubit.get(context).userLogin(
                  email: UserLoginCubit.get(context).emailController.text,
                  password: UserLoginCubit.get(context).passwordController.text,
                );
              }
            },
            buttonColor: Colors.blue,
          ) : const AnimatedLoading();
        },
      );
  }
}
