import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/core/utils/styles.dart';
import 'package:task_app/core/widgets/cahed_network.dart';
import 'package:task_app/features/home/data/model/main_bots_model.dart';
import 'package:task_app/features/home/presentation/screens/child_bots_of_main_screen.dart';
import '../../../../../core/utils/sized.dart';

class MainBotsItem extends StatelessWidget {
  const MainBotsItem(
      {super.key, required this.mainBotsModel, required this.index});

  final MainBotsModel mainBotsModel;
  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => ChildBotsOfMainScreen(
                  index: index + 1,
                )));
      },
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: 50.r,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(100.r),
                child: CustomCachedNetWorkImage(
                    image: mainBotsModel.data!.data![index].image!)),
          ),
          CustomSized.sizedHeight5,
          SizedBox(
              width: 70.w,
              child: Text(
                mainBotsModel.data!.data![index].name!,
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Styles.styleBold14,
              ))
        ],
      ),
    );
  }
}
