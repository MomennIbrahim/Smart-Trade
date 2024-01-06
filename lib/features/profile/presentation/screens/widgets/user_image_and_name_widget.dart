import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/core/widgets/cahed_network.dart';
import 'package:task_app/features/profile/data/model/user_profile_model.dart';
import '../../../../../core/utils/sized.dart';
import '../../../../../core/utils/styles.dart';
import 'user_name.dart';

class UserImageAndNameWidget extends StatelessWidget {
  const UserImageAndNameWidget({super.key, required this.userProfileModel});

  final UserProfileModel userProfileModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 50.r,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(80.r),
            child: CustomCachedNetWorkImage(
                image: userProfileModel.photo ??
                    'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png'),
          ),
        ),
        CustomSized.sizedWidth15,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UserName(userName: userProfileModel.name.toString()),
            CustomSized.sizedHeight5,
            Text(
              'Active',
              style: Styles.styleGreen16,
            ),
          ],
        ),
      ],
    );
  }
}
