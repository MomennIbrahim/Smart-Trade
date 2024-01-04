import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:task_app/core/utils/app_router.dart';

import 'profile_button_widget.dart';

class ContactUsWidget extends StatelessWidget {
  const ContactUsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ProfileButtonWidget(
      text: 'Contact us',
      icon: Icons.contact_support_outlined,
      onPressed: () {
        GoRouter.of(context).push(AppRouter.kContactUsScreen);
      },
    );
  }
}
