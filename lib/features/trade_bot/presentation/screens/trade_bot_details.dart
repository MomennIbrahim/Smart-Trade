import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/core/utils/sized.dart';
import 'package:task_app/core/utils/styles.dart';
import 'package:task_app/core/widgets/custom_background.dart';
import 'package:task_app/core/widgets/custom_button.dart';
import 'package:task_app/features/trade_bot/presentation/screens/widgets/bot_details_button.dart';

import 'widgets/details_item.dart';

class TradeBotDetails extends StatelessWidget {
  const TradeBotDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: customBackGround(),
          child: Column(
            children: [
              CustomSized.sizedHeight10,
              Center(
                child: CircleAvatar(
                  radius: 70.r,
                  backgroundImage: const AssetImage('assets/images/boooooot 1.png'),
                ),
              ),
              CustomSized.sizedHeight10,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Image(image: AssetImage('assets/images/arrow-up-right.png')),
                  CustomSized.sizedWidth10,
                  Text(
                    'SKLUSDT',
                    style: Styles.style35,
                  ),
                ],
              ),
              CustomSized.sizedHeight24,
              const DetailsItem(text: 'PURCHASING PRICE', value: '0.02718'),
              CustomSized.sizedHeight15,
              const DetailsItem(text: 'DATE', value: '2023/07/10 4:13 PM'),
              CustomSized.sizedHeight15,
              const DetailsItem(text: 'CURRENT PRICE', value: '0.0216'),
              CustomSized.sizedHeight15,
              const DetailsItem(text: 'SELLING PRICE', value: '0'),
              CustomSized.sizedHeight15,
              const DetailsItem(text: 'PERCENTAGE', value: '-20.53',textColor: Colors.red),
              CustomSized.sizedHeight15,
              const DetailsItem(text: 'STATUS', value: 'OPEN',textColor: Colors.green,),
              CustomSized.sizedHeight15,
              const BotDetailsButton(),
              CustomSized.sizedHeight20,
            ],
          ),
        ),
      ),
    );
  }
}
