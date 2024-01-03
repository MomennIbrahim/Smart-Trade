import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/core/utils/styles.dart';
import 'package:task_app/core/widgets/animated_loading.dart';
import 'package:task_app/core/widgets/error_text.dart';
import 'package:task_app/features/my_activate_bots/presentation/controller/activate_bots_cubit.dart';
import '../../../../../core/utils/sized.dart';
import '../../../../home/presentation/screens/widgets/statistics_bot_item.dart';

class MyActivateBotsListView extends StatelessWidget {
  const MyActivateBotsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ActivateBotsCubit, ActivateBotsState>(
      builder: (context, state) {
        if(state is ActivateBotsSuccessState) {
          return Padding(
          padding: EdgeInsets.all(16.0.h.w),
          child: ListView.separated(
            itemBuilder: (context, index) => ActivateBotItem(),
            separatorBuilder: (context, index) => CustomSized.sizedHeight10,
            itemCount: 6,
          ),
        );
        }else if(state is ActivateBotsFailureState){
          return ErrorText(errMessage: state.errMessage);
        }else {
          return const AnimatedLoading();
        }
      },
    );
  }
}
