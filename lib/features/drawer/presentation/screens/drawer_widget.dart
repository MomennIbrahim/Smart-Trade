import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/core/constace.dart';
import 'package:task_app/core/utils/sized.dart';
import 'package:task_app/core/utils/styles.dart';
import 'package:task_app/features/drawer/presentation/controller/drawer_cubit.dart';
import 'package:task_app/features/long_term/presentation/screens/long_term_screen.dart';
import 'package:task_app/features/my_activate_bots/presentation/screens/my_activate_bots_screen.dart';
import 'package:task_app/features/my_deactivate_bots/presentation/screens/my_deactivate_bots_screen.dart';
import 'package:task_app/features/st_wallet/presentation/screens/st_wallet_screen.dart';
import '../../../../core/widgets/custom_navigator.dart';
import '../../../medium_term/presentation/screens/medium_term_screen.dart';
import '../../../my_wallet/my_wallet_screen.dart';
import '../../../trade_bot/presentation/screens/trade_bot_screen.dart';
import '../../../home/presentation/screens/home_screen.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    super.key,
    required this.currentIndex,
  });

  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DrawerCubit, DrawerState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Drawer(
          backgroundColor: const Color(0xff040221),
          surfaceTintColor: Colors.cyan,
          elevation: 5,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(50.r),
                  bottomRight: Radius.circular(50.r))),
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 16.0, vertical: 64),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CircleAvatar(
                      backgroundImage: AssetImage(
                          'assets/images/channels4_profile.jpg'),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      'Smart Trade',
                      style: TextStyle(color: Colors.white, fontSize: 30.sp),
                    )
                  ],
                ),
                CustomSized.sizedHeight24,
                Expanded(
                    child: ListView.separated(
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            color: DrawerCubit.get(context).currentIndex == index
                                ? Constance.kPrimaryColor
                                : Colors.transparent,
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 26.0.w),
                            child: ListTile(
                              onTap: () {
                                DrawerCubit.get(context).changeDrawerIndex(index);
                                customNavigator(context: context, widget: DrawerCubit.get(context).screens[index]);
                              },
                              title: Text(DrawerCubit.get(context).drawerTitles[index]),
                              leading: const Icon(
                                Icons.home,
                                color: Constance.cWhite,
                              ),
                              titleTextStyle: Styles.style16,
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (context, index) =>
                      CustomSized.sizedHeight10,
                      itemCount: DrawerCubit.get(context).drawerTitles.length,
                    ))
              ],
            ),
          ),
        );
      },
    );
  }
}
