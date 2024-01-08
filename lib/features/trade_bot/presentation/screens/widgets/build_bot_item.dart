import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/core/constace.dart';
import 'package:task_app/core/utils/sized.dart';
import 'package:task_app/core/utils/styles.dart';
import '../trade_bot_details.dart';

class BuildBotItem extends StatelessWidget {
  const BuildBotItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ZoomIn(
        animate: true,
        duration: const Duration(seconds: 1
        ),
        child: GestureDetector(
          onTap: () {
            showModalBottomSheet(
                isScrollControlled: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(36.0),
                      topLeft: Radius.circular(36.0)
                  ),
                ),
                context: context,
                builder: (context) {
                  return FadeIn(
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height / 1.5,
                      child: const TradeBotDetails(),
                    ),
                  );
                });
          },
          child: Card(
            color: Constance.cardColor,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.r),
                    child: Image(
                      width: 80.w,
                      height: 80.h,
                      fit: BoxFit.cover,
                      image: const AssetImage('assets/images/logo.png'),
                    ),
                  ),
                ),
                CustomSized.sizedWidth10,
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'NEARUSDT',
                      style: Styles.style18,
                    ),
                    Text(
                      'Open',
                      style: Styles.style14,
                    ),
                  ],
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: CircleAvatar(
                    radius: 15.r,
                    backgroundColor: Colors.white12,
                    foregroundImage:
                        const AssetImage('assets/images/arrow-up-right.png'),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
