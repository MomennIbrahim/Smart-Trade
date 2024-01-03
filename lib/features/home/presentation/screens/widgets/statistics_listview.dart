import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'statistics_bot_item.dart';

class StatisticsListView extends StatelessWidget {
  const StatisticsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => ActivateBotItem(),
        separatorBuilder: (context, index) => SizedBox(
          height: 5.0.h,
        ),
        itemCount: 4,
      ),
    );
  }
}
