import 'package:flutter/material.dart';
import '../../../../../core/utils/sized.dart';
import '../../../../../core/utils/styles.dart';

class DetailsItem extends StatelessWidget {
  const DetailsItem({
    super.key,
    required this.text,
    required this.value,
    this.textColor = Colors.cyan,
  });

  final String text;
  final String value;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black12,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 8),
        child: Row(
          children: [
            Text(
              ('$text: '),
              style: Styles.style14,
            ),
            CustomSized.sizedWidth10,
            Text(
              value,
              style: Styles.style14.copyWith(color: textColor,fontWeight: FontWeight.w900),
            ),
          ],
        ),
      ),
    );
  }
}
