import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'out_line_input_border.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.controller,
    this.obscureText = false,
    required this.keyBoardType,
    this.suffixIcon,
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
  final Function? onFieldSubmitted;
  final bool hasOnSubmitted;
  final bool obscureText;
  final String validatorText;
  final Color fillColor;
  final Color labelColor;
  final Widget? suffixIcon;


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55.h,
      child: TextFormField(
        obscureText: obscureText,
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
            suffixIcon: suffixIcon,
            focusedBorder: outLineInputBorder(),
            label: Text(
              labelText,
            ),
            labelStyle: TextStyle(color: labelColor),
            fillColor: fillColor,
            filled: true,
            enabledBorder: outLineInputBorder(),
            errorBorder: outLineInputBorder(),
            border: outLineInputBorder(),
          )),
    );
  }
}
