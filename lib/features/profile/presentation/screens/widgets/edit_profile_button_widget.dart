import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/app_router.dart';
import 'profile_button_widget.dart';

class EditProfileButtonWidget extends StatelessWidget {
  const EditProfileButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ProfileButtonWidget(
      text: 'Edit Profile',
      icon: Icons.edit,
      onPressed: () {
        GoRouter.of(context).push(AppRouter.kEditProfileScreen);
      },
    );
  }
}
