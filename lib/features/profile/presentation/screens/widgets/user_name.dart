import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class UserName extends StatelessWidget {
  const UserName({super.key, required this.userName});

  final String userName;

  @override
  Widget build(BuildContext context) {
    return Text(
      userName,
      style: Styles.style23.copyWith(fontWeight: FontWeight.bold),
    );
  }
}
