import 'package:flutter/material.dart';
import 'package:task_app/features/profile/data/model/user_profile_model.dart';
import 'fees_info_widget.dart';

class FeesAndOrderRowWidget extends StatelessWidget {
  const FeesAndOrderRowWidget({super.key, required this.userProfileModel});

  final UserProfileModel userProfileModel;

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        FeesInfoWidget(value: '\$ ${userProfileModel.feesProfit??0}', text: 'Fees'),
        FeesInfoWidget(value: '${userProfileModel.openOrders??0}', text: 'Order'),
      ],
    );
  }
}
