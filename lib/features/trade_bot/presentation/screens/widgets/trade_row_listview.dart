import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/features/trade_bot/presentation/screens/widgets/trade_row_item.dart';

class TradeRowListView extends StatelessWidget {
  const TradeRowListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.h,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index)=> const TradeRowItem(),
        separatorBuilder: (context, index)=> SizedBox(width: 10.w,),
        itemCount: 6,
      ),
    );
  }
}
