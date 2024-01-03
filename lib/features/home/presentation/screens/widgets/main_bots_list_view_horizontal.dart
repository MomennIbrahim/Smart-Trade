import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/core/utils/sized.dart';
import 'package:task_app/core/utils/styles.dart';
import 'package:task_app/core/widgets/animated_loading.dart';
import 'package:task_app/core/widgets/error_text.dart';
import 'package:task_app/features/home/presentation/controller/main_bots_cubit.dart';
import 'package:task_app/features/home/presentation/screens/widgets/main_bots_item.dart';

class MainBotsListViewHorizontal extends StatelessWidget {
  const MainBotsListViewHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainBotsCubit, MainBotsState>(
      builder: (context, state) {
        if(state is MainBotsSuccessState) {
          return SizedBox(
          height: 130.h,
          child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) =>  MainBotsItem(mainBotsModel: state.mainBotsModel, index: index,),
            separatorBuilder: (context, index) => CustomSized.sizedWidth15,
            itemCount: state.mainBotsModel.data!.data!.length,
          ),
        );
        }else if (state is MainBotsFailureState){
          return ErrorText(errMessage: state.errMessage);
        }else{
          return const AnimatedLoading();
        }
      },
    );
  }
}
