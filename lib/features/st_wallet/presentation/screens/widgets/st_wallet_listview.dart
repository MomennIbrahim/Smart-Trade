import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:list_wheel_scroll_view_nls/list_wheel_scroll_view_nls.dart';
import 'package:task_app/core/utils/sized.dart';
import 'package:task_app/features/st_wallet/presentation/screens/widgets/st_wallet_item.dart';

class StWalletListView extends StatelessWidget {
  const StWalletListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListWheelScrollViewX(
        scrollDirection: Axis.horizontal,
        itemExtent: 280.w,
        diameterRatio: 2,
        children: List.generate(6, (index) => const StWalletItem(),),
      ),
    );
  }
}
