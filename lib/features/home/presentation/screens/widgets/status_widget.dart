import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfitAndFeesWidget extends StatelessWidget {
  const ProfitAndFeesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        profitAndFeesItem(text1: 'All Profit', text2: 'Fees'),
        profitAndFeesItem(text1: 'All Profit', text2: 'Fees'),
      ],
    );
  }

  profitAndFeesItem({
    required String text1,
    required String text2,
  }) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.green, width: 0.5),
          borderRadius: BorderRadius.circular(8.r)),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 8.0.h,horizontal: 50.w),
        child: Column(
          children: [
            const CircleAvatar(
              backgroundColor: Color(0x6623DA40),
              child: Text(
                '\$',
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Text(
              text1,
              style: const TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 5.h,
            ),
            Text(text2,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(color: Colors.white)),
          ],
        ),
      ),
    );
  }
}
