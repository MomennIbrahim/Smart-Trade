import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class UserName extends StatelessWidget {
  const UserName({super.key});

  @override
  Widget build(BuildContext context) {
    return   Text(
      'Super Admin',
      style: Styles.style23.copyWith(fontWeight: FontWeight.bold),
    );
  }
}