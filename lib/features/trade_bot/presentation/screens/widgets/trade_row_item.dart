import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class TradeRowItem extends StatelessWidget {
  const TradeRowItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80.w,
      decoration: BoxDecoration(
         border: Border.all(color: Colors.green,width: 0.5),
          borderRadius: BorderRadius.circular(8.r)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const CircleAvatar(
              backgroundColor: Color(0x6623DA40),
              child: Text('\$',style: TextStyle(color: Colors.white),),
            ),
            SizedBox(
              height: 30.h,
            ),
            const Text(
              'OFF',
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 5.h,
            ),
            const Text('Bot Status Operating',maxLines: 2,overflow: TextOverflow.ellipsis,
                style: TextStyle(color: Colors.white)),
          ],
        ),
      ),
    );
  }
}
