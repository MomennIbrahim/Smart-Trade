import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/styles.dart';
import 'current_plan_button.dart';
import 'enterprise_widget.dart';

class StWalletItem extends StatelessWidget {
  const StWalletItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 22.0.w),
      child: Container(
        width: 300.w,
        decoration: BoxDecoration(
            color: Colors.transparent,
            border: Border.all(color: Colors.blue)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const EnterpriseWidget(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0.w),
              child: Text(
                'Recommendation invite Friend 6 month',
                style: Styles.style18
                    .copyWith(fontWeight: FontWeight.w500),
              ),
            ),
            const CurrentPlanButton(),
          ],
        ),
      ),
    );
  }
}
