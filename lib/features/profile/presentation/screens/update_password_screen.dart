import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/core/constace.dart';
import 'package:task_app/core/utils/sized.dart';
import 'package:task_app/core/widgets/animated_loading.dart';
import 'package:task_app/core/widgets/custom_background.dart';
import 'package:task_app/core/widgets/custom_button.dart';
import 'package:task_app/core/widgets/error_snack_bar.dart';
import 'package:task_app/core/widgets/success_snack_bar.dart';
import 'package:task_app/features/profile/data/repository/profile_repository_implementation.dart';
import 'package:task_app/features/profile/presentation/controller/update_password_cubit/update_password_cubit.dart';
import 'package:task_app/features/profile/presentation/screens/widgets/old_passowrd_text_field.dart';
import '../../../../core/utils/service_locator.dart';
import '../../../../core/utils/styles.dart';
import 'widgets/confirm_new_passowrd_text_field.dart';
import 'widgets/new_passowrd_text_field.dart';

class UpdatePasswordScreen extends StatelessWidget {
  const UpdatePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          UpdatePasswordCubit(getIt.get<ProfileRepositoryImplementation>()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Change password'),
          centerTitle: false,
        ),
        body: Container(
          decoration: customBackGround(),
          child: BlocConsumer<UpdatePasswordCubit, UpdatePasswordState>(
            listener: (context, state){
              if(state is UpdatePasswordSuccessState){
                successSnackBar(context: context, message: state.updatePasswordModel.message!);
              }else if (state is UpdatePasswordFailureState){
                errorSnackBar(context: context, errMessage: state.errMessage);
              }
            },
            builder: (context, state) {
              var updatePassCubit = UpdatePasswordCubit.get(context);
              return Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 12.0.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Old Password',
                      style: Styles.style18,
                    ),
                    CustomSized.sizedHeight5,
                    OldPasswordTextField(
                        oldPasswordController:
                            updatePassCubit.oldPasswordController),
                    CustomSized.sizedHeight24,
                    Text(
                      'New Password',
                      style: Styles.style18,
                    ),
                    CustomSized.sizedHeight5,
                    NewPasswordTextField(
                        newPasswordController:
                            updatePassCubit.newPasswordController),
                    CustomSized.sizedHeight24,
                    Text(
                      'Confirm Password',
                      style: Styles.style18,
                    ),
                    CustomSized.sizedHeight5,
                    ConfirmNewPasswordTextField(
                        confirmNewPasswordController:
                            updatePassCubit.confirmNewPasswordController),
                    CustomSized.sizedHeight24,
                    state is UpdatePasswordLoadingState? const AnimatedLoading() : CustomButton(
                      text: 'Confirm',
                      onPressed: () {
                        updatePassCubit.updatePassword();
                        updatePassCubit.textFieldFocusNode.unfocus();
                      },
                      buttonColor: Constance.kPrimaryColor,
                      paddingHorizontal: 70.w,
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
