import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/features/profile/presentation/controller/edit_profile_cubit/edit_profile_cubit.dart';
import '../../../../../core/constace.dart';
import '../../../../../core/widgets/custom_button.dart';

class ConfirmButton extends StatelessWidget {
  const ConfirmButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EditProfileCubit, EditProfileState>(
      builder: (context, state) {
        return CustomButton(
          text: 'Confirm',
          onPressed: () {
            if (EditProfileCubit.get(context)
                .formKey
                .currentState!
                .validate()) {
              EditProfileCubit.get(context).updateUserProfile(
                email: EditProfileCubit.get(context).emailController.text,
                name: EditProfileCubit.get(context).nameController.text,
              );
            }
          },
          paddingHorizontal: 50.w,
          radius: 18.r,
          height: 35.h,
          buttonColor: Constance.kPrimaryColor,
        );
      },
    );
  }
}
