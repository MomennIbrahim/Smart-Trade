import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:task_app/features/authentication/presentation/controller/register_cubit.dart';

import '../../../../../core/constace.dart';
import '../../../../../core/widgets/custom_button.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterCubit, RegisterState>(
      builder: (context, state) {
        return state is! UserRegisterLoadingState
            ? CustomButton(
                text: 'Sign up',
                onPressed: () {
                  if (RegisterCubit.get(context)
                      .formKey
                      .currentState!
                      .validate()) {
                    RegisterCubit.get(context).userRegister(
                      email: RegisterCubit.get(context).emailController.text,
                      password:
                          RegisterCubit.get(context).passwordController.text,
                      name: RegisterCubit.get(context).userNameController.text,
                      passwordConfirmation: RegisterCubit.get(context)
                          .passwordConfirmationController
                          .text,
                    );
                  }
                },
                buttonColor: Colors.blue,
              )
            : Center(
                child: LoadingAnimationWidget.threeArchedCircle(
                size: 40.w,
                color: Constance.kPrimaryColor,
              ));
      },
    );
  }
}
