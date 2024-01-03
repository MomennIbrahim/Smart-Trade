import 'package:flutter/material.dart';
import 'package:task_app/core/utils/styles.dart';

class ErrorText extends StatelessWidget {
  const ErrorText({super.key, required this.errMessage});

  final String errMessage;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errMessage,style: Styles.style18Yellow,
      ),
    );
  }
}
