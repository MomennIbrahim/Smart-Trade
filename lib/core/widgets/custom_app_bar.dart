import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:task_app/core/utils/app_router.dart';
import 'package:task_app/core/utils/local_storage.dart';
import 'package:task_app/core/utils/styles.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  const CustomAppBar({super.key, required this.appbarText,});

  final String appbarText;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           CircleAvatar(
            radius: 18.r,
            backgroundImage: const AssetImage('assets/images/channels4_profile.jpg'),
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
          padding: const EdgeInsets.symmetric(horizontal: 4.0),
          child: GestureDetector(
            onTap: (){
              CacheHelper.removeData(key: 'token').then((value) {
                GoRouter.of(context).go(AppRouter.kLoginScreen);
              });
            },
            child: CircleAvatar(
              backgroundColor: Colors.grey[400],
              child: const Icon(Icons.more_vert),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
