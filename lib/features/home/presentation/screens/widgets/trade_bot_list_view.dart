import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/core/utils/sized.dart';
import 'package:task_app/features/home/presentation/screens/widgets/trade_bot_item.dart';

class TradeBotListView extends StatelessWidget {
  const TradeBotListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130.h,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context , index) => const TradeBotItem(),
        separatorBuilder: (context , index) => CustomSized.sizedWidth10,
        itemCount: 10,
      ),
    );
  }
}
