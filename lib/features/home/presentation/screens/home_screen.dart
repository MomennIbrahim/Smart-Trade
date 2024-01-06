import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marquee/marquee.dart';
import 'package:task_app/core/constace.dart';
import 'package:task_app/core/widgets/custom_app_bar.dart';
import 'package:task_app/features/drawer/presentation/controller/drawer_cubit.dart';
import 'package:task_app/features/drawer/presentation/screens/drawer_widget.dart';
import 'package:task_app/features/home/presentation/screens/widgets/custom_marquee_text.dart';
import 'package:task_app/features/home/presentation/screens/widgets/status_widget.dart';
import '../../../../core/utils/sized.dart';
import '../../../../core/widgets/custom_background.dart';
import 'widgets/carousel_smart_trade.dart';
import 'widgets/main_bots_list_view_horizontal.dart';
import 'widgets/trade_bot_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(appbarText: 'Smart Trade'),
      drawer: DrawerWidget(currentIndex: DrawerCubit.get(context).currentIndex),
      body: Container(
        height: double.infinity,
        decoration: customBackGround(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 0.0.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomSized.sizedHeight20,
                const CustomMarqueeText(),
                // const IconsBar(),
                CustomSized.sizedHeight15,
                const CarouselSmartTrade(),
                CustomSized.sizedHeight20,
                const TradeBoTText(),
                CustomSized.sizedHeight20,
                const MainBotsListViewHorizontal(),
                CustomSized.sizedHeight20,
                // const TopRecomendationText(),
                // DividerUnderText(width: 100.w),
                // CustomSized.sizedHeight10,
                // const TopRecomendationListView(),
                // CustomSized.sizedHeight20,
                // const StatisticsBoTText(),
                // DividerUnderText(width: 50.w),
                // CustomSized.sizedHeight10,
                // const StatisticsListView(),
                // CustomSized.sizedHeight24,
                // const FreeRecomandationText(),
                // DividerUnderText(width: 120.w),
                // CustomSized.sizedHeight10,
                // const ArusdtCardListView(),
                // CustomSized.sizedHeight24,
                const ProfitAndFeesWidget(),
                CustomSized.sizedHeight24,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
