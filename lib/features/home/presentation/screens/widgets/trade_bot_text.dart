import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/core/utils/styles.dart';

import '../../../../../core/widgets/divider_under_text.dart';

class TradeBoTText extends StatelessWidget {
  const TradeBoTText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0.w),
      child: Column(
        children: [
          Text(
            'Trade Bot',
            style: Styles.style23,
          ),
          DividerUnderText(width: 15.w),
        ],
      ),
    );
  }
}
