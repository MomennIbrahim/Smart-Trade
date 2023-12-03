import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_text_field.dart';


class ApiPassphraseField extends StatelessWidget {
  const ApiPassphraseField({super.key, required this.apiPassphraseFieldController});

  final TextEditingController apiPassphraseFieldController;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      controller: apiPassphraseFieldController,
      keyBoardType: TextInputType.text,
      labelText: 'Api Secret',
      validatorText: 'empty',
    );
  }
}
