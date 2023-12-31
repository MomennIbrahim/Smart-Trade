import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:task_app/core/constace.dart';
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
          ): Center(child: LoadingAnimationWidget.threeArchedCircle(size: 40.w, color: Constance.kPrimaryColor,));
        },
      );
  }
}
