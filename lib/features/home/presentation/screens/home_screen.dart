import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/core/widgets/custom_app_bar.dart';
import 'package:task_app/core/widgets/divider_under_text.dart';
import 'package:task_app/features/home/presentation/screens/widgets/drawer_widget.dart';
import 'package:task_app/features/home/presentation/screens/widgets/free_recomendation_text.dart';
import 'package:task_app/features/home/presentation/screens/widgets/icons_bar.dart';
import 'package:task_app/features/home/presentation/screens/widgets/statistics_bot_text.dart';
import 'package:task_app/features/home/presentation/screens/widgets/statistics_listview.dart';
import 'package:task_app/features/home/presentation/screens/widgets/top_recomendation_listview.dart';
import '../../../../core/utils/sized.dart';
import '../../../../core/widgets/custom_background.dart';
import '../../../trade_bot/presentation/screens/widgets/trade_row_listview.dart';
import 'widgets/arustd_card_listview.dart';
import 'widgets/carousel_smart_trade.dart';
import 'widgets/top_recomendation_text.dart';
import 'widgets/trade_bot_list_view.dart';
import 'widgets/trade_bot_text.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<String> images = [
    'https://blog.ipleaders.in/wp-content/uploads/2021/09/Implications-of-youth-opinion-on-international-trade-policy-1280x720-1.jpg',
    'https://blog.ipleaders.in/wp-content/uploads/2021/09/Implications-of-youth-opinion-on-international-trade-policy-1280x720-1.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(appbarText: 'Smart Trade'),
      drawer: DrawerWidget(currentIndex: 0),
      body: SingleChildScrollView(
        child: Container(
          decoration: customBackGround(),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomSized.sizedHeight20,
                const IconsBar(),
                CustomSized.sizedHeight10,
                const CarouselSmartTrade(),
                CustomSized.sizedHeight10,
                const TradeBoTText(),
                DividerUnderText(width: 15.w),
                CustomSized.sizedHeight20,
                const TradeBotListView(),
                CustomSized.sizedHeight20,
                const TopRecomendationText(),
                DividerUnderText(width: 100.w),
                CustomSized.sizedHeight10,
                const TopRecomendationListView(),
                CustomSized.sizedHeight20,
                const StatisticsBoTText(),
                DividerUnderText(width: 50.w),
                CustomSized.sizedHeight10,
                const StatisticsListView(),
                CustomSized.sizedHeight24,
                const FreeRecomandationText(),
                DividerUnderText(width: 120.w),
                CustomSized.sizedHeight10,
                const ArusdtCardListView(),
                CustomSized.sizedHeight24,
                const TradeRowListView(),
                CustomSized.sizedHeight24,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
