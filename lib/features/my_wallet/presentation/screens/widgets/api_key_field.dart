import 'package:flutter/material.dart';
import '../../../../../core/widgets/custom_text_field.dart';

class ApiKeyField extends StatelessWidget {
  const ApiKeyField({super.key, required this.apiKeyController});

  final TextEditingController apiKeyController;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      controller: apiKeyController,
      keyBoardType: TextInputType.text,
      labelText: 'Api Secret',
      validatorText: 'empty',
    );
  }
}
