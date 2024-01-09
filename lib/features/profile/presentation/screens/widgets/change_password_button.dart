import 'package:flutter/material.dart';
import 'package:task_app/core/widgets/custom_navigator.dart';
import '../../../../../core/utils/styles.dart';
import '../update_password_screen.dart';

class ChangePasswordButton extends StatelessWidget {
  const ChangePasswordButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  Align(
        alignment: Alignment.centerLeft,
        child: TextButton(
            onPressed: () {
              customNavigator(context: context, widget: UpdatePasswordScreen());
            },
            child: Text(
              'Change password',
              style: Styles.style14,
            )));
  }
}
