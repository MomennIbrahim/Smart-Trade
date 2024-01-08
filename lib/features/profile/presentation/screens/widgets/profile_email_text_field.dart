import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_app/features/profile/presentation/controller/user_profile_cubit/user_profile_cubit.dart';

import '../../../../../core/widgets/custom_text_field.dart';
import '../../controller/edit_profile_cubit/edit_profile_cubit.dart';

class ProfileEmailTextField extends StatelessWidget {
  const ProfileEmailTextField({super.key, required this.profileEmailController});

  final TextEditingController profileEmailController ;

  @override
  Widget build(BuildContext context) {
    return  BlocBuilder<EditProfileCubit, EditProfileState>(
  builder: (context, state) {
    EditProfileCubit.get(context).emailController.text = UserProfileCubit.get(context).model!.email! ;
    return CustomTextFormField(
      controller: profileEmailController,
      keyBoardType: TextInputType.name,
      labelText: '',
      labelColor: Colors.white,
      validatorText: 'email field is required',
    );
  },
);
  }
}
