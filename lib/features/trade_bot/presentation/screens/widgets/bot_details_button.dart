import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/core/widgets/custom_navigator.dart';

import '../../../../../core/widgets/custom_button.dart';
import '../bot_information.dart';

class BotDetailsButton extends StatelessWidget {
  const BotDetailsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      text: 'Bot Details',
      onPressed: () {
        customNavigator(context: context, widget: const BotInformation());
      },
      buttonColor: Colors.blue,
      paddingHorizontal: 100.w,
    );
  }
}
