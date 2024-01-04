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
      elevation: 0,
      color: Colors.white30,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(text,style: Styles.style23.copyWith(fontWeight: FontWeight.bold),),
            CircleAvatar(
              radius: 25.r,
              backgroundColor: Colors.transparent,
              child: Image(image: AssetImage(image),),
            )
          ],
        ),
      ),
    );
  }
}
