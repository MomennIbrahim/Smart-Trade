import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'package:task_app/core/utils/sized.dart';
import 'package:task_app/core/utils/styles.dart';
import 'package:task_app/core/widgets/custom_button.dart';
import 'package:task_app/core/widgets/custom_navigator.dart';
import '../../../../../core/constace.dart';
import '../../../../my_activate_bots/presentation/screens/bot_report_screen2.dart';

class StatisticsItem extends StatelessWidget {
  StatisticsItem({super.key});

  final slider = SleekCircularSlider(
    onChange: (value) {
      print(value);
    },
    appearance: CircularSliderAppearance(
      size: 90.r,
      customColors: CustomSliderColors(
          progressBarColor: Constance.kPrimaryColor,
          trackColor: Colors.grey,
          dynamicGradient: true,
      ),
      customWidths: CustomSliderWidths(progressBarWidth: 5),
    ),
    min: 0,
    max: 100,
    initialValue: 50,
    innerWidget: (value) {
      return Padding(
        padding: EdgeInsets.all(8.0.w.h),
        child: const CircleAvatar(
          backgroundImage: AssetImage(
              'assets/images/boooooot 1.png'),
        ),
      );
    },
  );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250.w,
      height: 150.h,
      child: Card(
          color: Constance.cardColor,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0.w,vertical: 5.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    slider,
                    const Spacer(),
                    Text(
                      'Bullihs Bot',
                      style: Styles.style20,
                    ),
                  ],
                ),
                CustomSized.sizedWidth10,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Profile Last Month',
                        style: TextStyle(color: Constance.cWhite),
                      ),
                      CustomSized.sizedHeight15,
                      const Text(
                        '+197.5078%',
                        style: TextStyle(color: Constance.cWhite),
                      ),
                      const Spacer(),
                      CustomButton(
                        paddingHorizontal: 0.0,
                        text: 'More Details',
                        onPressed: () {
                          customNavigator(context: context, widget: const BotReportScreen2());
                        },
                        buttonColor: Constance.kPrimaryColor,
                      )
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
