import 'package:flutter/material.dart';
import 'package:task_app/core/utils/sized.dart';
import 'package:task_app/core/widgets/custom_app_bar.dart';
import 'package:task_app/core/widgets/custom_background.dart';
import 'package:task_app/features/home/presentation/screens/widgets/drawer_widget.dart';
import '../../../home/presentation/screens/widgets/statistics_bot_item.dart';

class MyDeActivateBotsScreen extends StatelessWidget {
  const MyDeActivateBotsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(appbarText: 'My DeActivate Bots'),
      drawer: DrawerWidget(currentIndex: 3),
      body: Container(
        decoration: customBackGround(),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
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
