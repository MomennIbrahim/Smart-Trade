import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:task_app/core/constace.dart';
import 'package:task_app/core/utils/app_router.dart';
import 'package:task_app/core/utils/styles.dart';
import 'package:task_app/core/widgets/cahed_network.dart';
import 'package:task_app/features/profile/presentation/screens/profile_screen.dart';
import 'package:task_app/features/profile/presentation/screens/widgets/logout_widget.dart';
import 'package:task_app/features/term/presentation/controller/configuration_cubit/configuration_cubit.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.appbarText,
  });

  final String appbarText;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ConfigurationCubit, ConfigurationState>(
      builder: (context, state) {
        return AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if(ConfigurationCubit.get(context).model != null)
                CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 18.r,
                child: CustomCachedNetWorkImage(image: ConfigurationCubit.get(context).model!.data!.appLogo.toString()),
              ),
              SizedBox(
                width: 10.w,
              ),
              Expanded(
                child: Text(
                  appbarText,
                  style: Styles.style18,
                ),
              )
            ],
          ),
          centerTitle: true,
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 10.0.w),
              child: GestureDetector(
                onTap: () {
                  GoRouter.of(context).push(AppRouter.kProfileScreen);
                },
                child: CircleAvatar(
                  backgroundColor: Colors.white30,
                  child: Icon(
                    Icons.person,
                    color: Constance.kYellowColor,
                    size: 28.r,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
