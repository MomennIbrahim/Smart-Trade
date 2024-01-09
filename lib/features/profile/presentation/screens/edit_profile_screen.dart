import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/core/utils/service_locator.dart';
import 'package:task_app/core/widgets/animated_loading.dart';
import 'package:task_app/core/widgets/custom_background.dart';
import 'package:task_app/features/profile/data/repository/profile_repository_implementation.dart';
import 'package:task_app/features/profile/presentation/controller/edit_profile_cubit/edit_profile_cubit.dart';
import 'package:task_app/features/profile/presentation/screens/widgets/confirm_button.dart';
import '../../../../core/utils/sized.dart';
import '../../../../core/utils/styles.dart';
import '../../../../core/widgets/error_snack_bar.dart';
import 'widgets/change_password_button.dart';
import 'widgets/profile_email_text_field.dart';
import 'widgets/profile_name_text_field.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          EditProfileCubit(getIt.get<ProfileRepositoryImplementation>()),
      child: BlocConsumer<EditProfileCubit, EditProfileState>(
        listener: (context, state) {
          if(state is EditProfileSuccessState){
            EditProfileCubit.get(context).stateIsSuccess(state, context);
          }else if(state is EditProfileFailureState){
            errorSnackBar(context: context, errMessage: state.errMessage);
          }
        },
        builder: (context, state) {
          var cubit = EditProfileCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              title: const Text('Edit Profile'),
              centerTitle: false,
            ),
            body: Form(
              key: cubit.formKey,
              child: Container(
                decoration: customBackGround(),
                child: state is EditProfileLoadingState? const AnimatedLoading() : Padding(
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
                          profileNameController: cubit.emailController),
                      CustomSized.sizedHeight20,
                      Text(
                        'Email',
                        style: Styles.style18,
                      ),
                      CustomSized.sizedHeight10,
                      ProfileEmailTextField(
                          profileEmailController: cubit.emailController),
                      const ChangePasswordButton(),
                      CustomSized.sizedHeight24,
                      const ConfirmButton(),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
