import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:list_wheel_scroll_view_nls/list_wheel_scroll_view_nls.dart';
import 'package:task_app/core/widgets/error_text.dart';
import 'package:task_app/features/term/presentation/controller/long_term_cubit/long_term_cubit.dart';
import 'package:task_app/features/term/presentation/controller/long_term_cubit/long_term_state.dart';
import '../../../../../core/widgets/animated_loading.dart';
import 'term_cart_item.dart';

class LongTermListView extends StatelessWidget {
  const LongTermListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LongTermCubit, LongTermState>(
      builder: (context, state) {
        if(state is LongTermSuccessState) {
          return SizedBox(
            height: 250.h,
            child: ListWheelScrollViewX(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemExtent: 290.w,
              diameterRatio: 2,
              children: List.generate(5, (index) => TermCardItem(
                termModel: state.termModel,
                index: index,
              )),
            ),
          );
        }else if(state is LongTermFailureState){
          return ErrorText(errMessage: state.errMessage);
        }else{
          return const AnimatedLoading();
        }
      },
    );
  }
}


