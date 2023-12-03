import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:list_wheel_scroll_view_nls/list_wheel_scroll_view_nls.dart';
import 'arusdt_cart_item.dart';

class ArusdtCardListView extends StatelessWidget {
  const ArusdtCardListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250.h,
      child: ListWheelScrollViewX(
        scrollDirection: Axis.horizontal,
        itemExtent: 250.w,
        diameterRatio: 2,
        children: List.generate(5, (index) => const ArustdCardItem()),
      ),
    );
  }
}
