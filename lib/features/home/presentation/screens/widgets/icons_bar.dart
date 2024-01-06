import 'package:flutter/material.dart';
import 'package:task_app/core/widgets/custom_navigator.dart';

import '../../../../profile/presentation/screens/profile_screen.dart';

class IconsBar extends StatelessWidget {
  const IconsBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Icon(Icons.settings),
        const Icon(Icons.flag),
        const Icon(Icons.settings_overscan_outlined),
        const Icon(Icons.notifications),
        GestureDetector(
          onTap: (){
            customNavigator(context: context, widget: ProfileScreen());
          },
          child: const CircleAvatar(
            backgroundImage: AssetImage(
                'assets/images/channels4_profile.jpg'),
          ),
        ),
      ],
    );
  }
}
