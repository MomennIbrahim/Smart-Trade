import 'package:flutter/material.dart';
import 'package:task_app/core/utils/sized.dart';
import 'package:task_app/core/widgets/custom_app_bar.dart';
import 'package:task_app/core/widgets/custom_background.dart';
import '../../../drawer/presentation/screens/drawer_widget.dart';
import 'widgets/bot_item_list_view.dart';
import 'widgets/trade_row_listview.dart';

class TradeBotScreen extends StatelessWidget {
  const TradeBotScreen({super.key,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: Container(
      //   height: 50.h,
      //   color: Constance.cardColor,
      //   child: Padding(
      //     padding: const EdgeInsets.symmetric(horizontal: 16.0),
      //     child: Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //       children: [
      //         Text(
      //           '1 of 15',
      //           style: TextStyle(color: Colors.white, fontSize: 16.sp),
      //         ),
      //         Container(
      //           height: 30.h,
      //           decoration: BoxDecoration(
      //               borderRadius: BorderRadius.circular(5.0.r),
      //               color: Colors.black12,
      //               border: Border.all(color: Colors.cyan)),
      //           child: Padding(
      //             padding: const EdgeInsets.symmetric(horizontal: 8.0),
      //             child: Row(
      //               children: [
      //                 Padding(
      //                   padding: const EdgeInsets.symmetric(horizontal: 8.0),
      //                   child: Text(
      //                     'Preview',
      //                     style:
      //                         TextStyle(color: Colors.white, fontSize: 16.sp),
      //                   ),
      //                 ),
      //                 const VerticalDivider(
      //                   color: Colors.cyan,
      //                 ),
      //                 CircleAvatar(
      //                     radius: 10,
      //                     backgroundColor: Colors.cyan,
      //                     child: Text(
      //                       '1',
      //                       style: TextStyle(
      //                           color: Colors.white,
      //                           fontSize: 12.sp,
      //                           fontWeight: FontWeight.bold),
      //                     )),
      //                 const VerticalDivider(
      //                   color: Colors.cyan,
      //                 ),
      //                 Padding(
      //                   padding: const EdgeInsets.symmetric(horizontal: 8.0),
      //                   child: Text(
      //                     'Next',
      //                     style:
      //                         TextStyle(color: Colors.white, fontSize: 16.sp),
      //                   ),
      //                 ),
      //               ],
      //             ),
      //           ),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
      appBar: const CustomAppBar(appbarText: 'Trade Bot'),
      drawer: DrawerWidget(currentIndex: 1),
      body: SingleChildScrollView(
        child: Container(
          decoration: customBackGround(),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TradeRowListView(),
                CustomSized.sizedHeight50,
                const BotItemListView(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
