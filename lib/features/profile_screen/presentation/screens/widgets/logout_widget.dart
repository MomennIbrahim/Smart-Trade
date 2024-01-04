import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:task_app/core/utils/app_router.dart';
import 'package:task_app/core/utils/local_storage.dart';
import '../../../../../core/utils/styles.dart';
import 'profile_button_widget.dart';

class LogoutWidget extends StatelessWidget {
  const LogoutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ProfileButtonWidget(
      text: 'Logout',
      icon: Icons.logout,
      style: Styles.style18Red,
      onPressed: () {
        CacheHelper.removeData(key: 'token').then((value) {
          GoRouter.of(context).go(AppRouter.kLoginScreen);
        });
      },
    );
  }
}
