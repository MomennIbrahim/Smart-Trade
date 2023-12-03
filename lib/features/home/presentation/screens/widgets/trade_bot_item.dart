import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/core/utils/styles.dart';

import '../../../../../core/utils/sized.dart';

class TradeBotItem extends StatelessWidget {
  const TradeBotItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 50.r,
          backgroundImage: const AssetImage("assets/images/Ellipse 3.png"),
        ),
        CustomSized.sizedHeight5,
        SizedBox(
            width: 70.w,
            child: Text(
              'ONG Algo Bot 129.67%',
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Styles.style12,
            ))
      ],
    );
  }
}
