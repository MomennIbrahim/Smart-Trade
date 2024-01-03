import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/core/widgets/animated_loading.dart';
import 'package:task_app/core/widgets/error_text.dart';
import 'package:task_app/features/my_activate_bots/presentation/controller/de_activate_bots_cubit/de_activate_bots_cubit.dart';
import '../../../../../core/utils/sized.dart';
import '../../../../home/presentation/screens/widgets/statistics_bot_item.dart';
import '../../controller/activate_bots_cubit/activate_bots_cubit.dart';

class MyDeActivateBotsListView extends StatelessWidget {
  const MyDeActivateBotsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DeActivateBotsCubit, DeActivateBotsState>(
      builder: (context, state) {
        if(state is DeActivateBotsSuccessState) {
          return Padding(
          padding: EdgeInsets.all(16.0.h.w),
          child: ListView.separated(
            itemBuilder: (context, index) => MyBotsItem(),
            separatorBuilder: (context, index) => CustomSized.sizedHeight10,
            itemCount: 6,
          ),
        );
        }else if(state is DeActivateBotsFailureState){
          return ErrorText(errMessage: state.errMessage);
        }else {
          return const AnimatedLoading();
        }
      },
    );
  }
}
