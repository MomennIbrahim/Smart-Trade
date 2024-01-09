import 'package:flutter/material.dart';
import 'package:task_app/core/widgets/custom_app_bar.dart';
import 'package:task_app/core/widgets/custom_background.dart';
import 'package:task_app/features/my_activate_bots/presentation/screens/widgets/bot_report_listview.dart';

class BotReportScreen2 extends StatelessWidget {
  const BotReportScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(appbarText: 'Bot Report',),
      body: Container(
        decoration: customBackGround(),
        child: const BotReportListView(),
      ),
    );
  }
}
