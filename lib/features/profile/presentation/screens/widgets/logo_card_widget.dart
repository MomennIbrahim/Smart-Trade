import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/styles.dart';

class LogoCardWidget extends StatelessWidget {
  const LogoCardWidget({super.key, required this.image, required this.text});

  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      color: Colors.white30,
      child: Padding(
        padding: EdgeInsets.all(8.0.w.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(text,style: Styles.style20.copyWith(fontWeight: FontWeight.bold),),
            CircleAvatar(
              radius: 20.r,
              backgroundColor: Colors.transparent,
              child: Image(image: AssetImage(image),),
            )
          ],
        ),
      ),
    );
  }
}
