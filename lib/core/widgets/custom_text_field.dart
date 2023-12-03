import 'package:flutter/material.dart';
import 'out_line_input_border.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.controller,
    this.obscureText,
    required this.keyBoardType,
    this.suffixIconPressed,
    required this.labelText,
    required this.validatorText,
    this.onFieldSubmitted,
    this.hasOnSubmitted = false,
    this.fillColor = const Color(0xff0E0E23),
    this.labelColor = Colors.white38,
  });

  final TextEditingController controller;
  final TextInputType keyBoardType;
  final String labelText;
  final Function? suffixIconPressed;
  final Function? onFieldSubmitted;
  final bool hasOnSubmitted;
  final bool? obscureText;
  final String validatorText;
  final Color fillColor;
  final Color labelColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextFormField(
          controller: controller,
          keyboardType: keyBoardType,
          onFieldSubmitted: hasOnSubmitted
              ? (value) {
                  onFieldSubmitted!();
                }
              : null,
          validator: (value) {
            if (value!.isEmpty) {
              return validatorText;
            }
            return null;
          },
          decoration: InputDecoration(
            focusedBorder: outLineInputBorder(),
            label: Text(
              labelText,
            ),
            labelStyle: TextStyle(color: labelColor),
            fillColor: fillColor,
            filled: true,
            enabledBorder: outLineInputBorder(),
          )),
    );
  }
}
