import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/sized.dart';
import '../../../../../core/utils/styles.dart';
import 'bot_report_item.dart';
import 'more_button_of_report.dart';

class BotReportListView extends StatelessWidget {
  const BotReportListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 8.w),
      child: ZoomIn(
        child: ListView.separated(
          itemBuilder: (context, index) => Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 4.0),
                child: CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Text(
                    (index+1).toString(),
                    style: Styles.style14,
                  ),
                ),
              ),
              const BotReportItem(),
              const MoreButtonOfReport(),
            ],
          ),
          separatorBuilder: (context, index) => CustomSized.sizedHeight10,
          itemCount: 10,
        ),
      ),
    );
  }
}
