import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class SubText extends StatelessWidget {
  const SubText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Sign in to continue to smart Trade.',
      style: Styles.style12.copyWith(color: Colors.black54),
    );
  }
}
