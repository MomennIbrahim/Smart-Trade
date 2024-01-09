import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_app/features/profile/presentation/controller/edit_profile_cubit/edit_profile_cubit.dart';
import 'package:task_app/features/profile/presentation/controller/user_profile_cubit/user_profile_cubit.dart';
import '../../../../../core/widgets/custom_text_field.dart';

class ProfileNameTextField extends StatelessWidget {
  const ProfileNameTextField({super.key, required this.profileNameController});

  final TextEditingController profileNameController;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EditProfileCubit, EditProfileState>(
  builder: (context, state) {
    EditProfileCubit.get(context).nameController.text = UserProfileCubit.get(context).model!.name! ;
    return CustomTextFormField(
      controller: EditProfileCubit.get(context).nameController,
      keyBoardType: TextInputType.name,
      labelText: '',
      labelColor: Colors.white,
      validatorText: 'name field is required',
    );
  },
);
  }
}
