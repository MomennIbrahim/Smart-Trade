import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/core/widgets/custom_background.dart';
import 'package:task_app/features/home/presentation/screens/widgets/child_bots_of_main_list_view.dart';

class ChildBotsOfMainScreen extends StatelessWidget {
  const ChildBotsOfMainScreen({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Child bots of main'),
        toolbarHeight: 70.h,
      ),
      body: Container(
        decoration: customBackGround(),
        child: ChildBotsOfMainListView(index: index,),
      ),
    );
  }
}
