import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Welcome Back !',
      style:
      Styles.style18.copyWith(color: Colors.blueAccent),
    );
  }
}
