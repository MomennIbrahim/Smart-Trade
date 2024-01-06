import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TermTextLorem extends StatelessWidget {
  const TermTextLorem({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0.w),
      child: Container(
        width: double.infinity,
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          color: const Color(0x440E0E23),
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1, color: Color(0x2317BBEF)),
            borderRadius: BorderRadius.circular(3),
          ),
          shadows: const [
            BoxShadow(
              color: Color(0x3F000000),
              blurRadius: 4,
              offset: Offset(0, 4),
            )
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Html(
            data:
            text,
          ),
        ),
      ),
    );
  }
}
