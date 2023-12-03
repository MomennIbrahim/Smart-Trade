import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/core/constace.dart';
import 'package:task_app/core/utils/sized.dart';

class TopRecomendationItem extends StatelessWidget {
  const TopRecomendationItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Constance.cardColor,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0.w),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'MASKUSDT',
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
                Text(
                  '197.351%',
                  style: TextStyle(color: Colors.white, fontSize: 25.sp),
                ),
              ],
            ),
            CustomSized.sizedWidth10,
            const CircleAvatar(
              backgroundColor: Colors.white38,
              child: Padding(
                padding: EdgeInsets.all(4.0),
                child: Image(
                  image: AssetImage('assets/images/Group 4.png'),
                ),
              ),
              // foregroundImage: AssetImage('assets/images/Group 4.png'),
            )
          ],
        ),
      ),
    );
  }
}
