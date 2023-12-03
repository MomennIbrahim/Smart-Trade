import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/core/utils/sized.dart';
import 'package:task_app/core/widgets/custom_app_bar.dart';
import 'package:task_app/core/widgets/custom_background.dart';
import '../../../home/presentation/screens/widgets/drawer_widget.dart';
import '../../../home/presentation/screens/widgets/statistics_bot_item.dart';

class MyActivateBotsScreen extends StatelessWidget {
  const MyActivateBotsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(appbarText: 'My Activate Bots'),
      drawer: DrawerWidget(currentIndex: 2),
      body: Container(
        decoration: customBackGround(),
        child: Padding(
          padding: EdgeInsets.all(16.0.h.w),
          child: ListView.separated(
            itemBuilder: (context,index)=> StatisticsItem(),
            separatorBuilder: (context,index)=> CustomSized.sizedHeight10,
            itemCount: 6,
          ),
        ),
      ),
    );
  }
}
