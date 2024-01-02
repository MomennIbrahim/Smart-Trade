import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/features/home/data/model/child_bots_model.dart';
import '../../../../../core/constace.dart';
import '../../../../../core/utils/sized.dart';
import '../../../../../core/utils/styles.dart';

class ChildBotsOfMainItem extends StatelessWidget {
  const ChildBotsOfMainItem({
    super.key,
    required this.childBotsModel,
    required this.index,
  });

  final ChildBotsModel childBotsModel;
  final int index;

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16.0.w,
        ),
        child: SizedBox(
          height: 100.h,
          child: Card(
            color: Constance.cardColor,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.r),
                  child: Image(
                      width: 100.w,
                      height: 100.h,
                      fit: BoxFit.cover,
                      image:
                          NetworkImage(childBotsModel.data!.data![index].image!)),
                ),
                CustomSized.sizedWidth10,
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(right: 8.0.w, top: 5.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          childBotsModel.data!.data![index].botName!,
                          style: Styles.style16,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        CustomSized.sizedHeight5,
                        Text(childBotsModel.data!.data![index].ticker!,
                            style: Styles.styleYellow14,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis),
                        Text(childBotsModel.data!.data![index].typeName!,
                            style: Styles.style14,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis),
                        CustomSized.sizedHeight5,
                        Text(childBotsModel.data!.data![index].updatedAt!,
                            style: Styles.style12,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
