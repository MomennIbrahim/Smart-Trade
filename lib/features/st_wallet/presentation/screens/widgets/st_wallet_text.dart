import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/styles.dart';

class StWalletText extends StatelessWidget {
  const StWalletText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0.w.h),
      child: Text(
        'S.t Wallet',
        style: Styles.style23,
      ),
    );
  }
}
