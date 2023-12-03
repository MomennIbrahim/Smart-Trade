import 'package:flutter/material.dart';
import '../../../../../core/utils/sized.dart';
import 'build_bot_item.dart';

class BotItemListView extends StatelessWidget {
  const BotItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context,index)=> const BuildBotItem(),
      separatorBuilder: (context,index) => CustomSized.sizedHeight5,
      itemCount: 10,
    );
  }
}
