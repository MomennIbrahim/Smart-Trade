import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_text_field.dart';


class ApiSecretField extends StatelessWidget {
  const ApiSecretField({super.key, required this.walletController});

  final TextEditingController walletController;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      controller: walletController,
      keyBoardType: TextInputType.text,
      labelText: 'Api Secret',
      validatorText: 'empty',
    );
  }
}
