import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:list_wheel_scroll_view_nls/list_wheel_scroll_view_nls.dart';
import 'package:task_app/core/widgets/error_text.dart';
import '../../../../../core/widgets/animated_loading.dart';
import '../../controller/medium_term_cubit/medium_term_cubit.dart';
import 'term_cart_item.dart';

class MediumTermListView extends StatelessWidget {
  const MediumTermListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MediumTermCubit, MediumTermState>(
      builder: (context, state) {
        if(state is MediumTermSuccessState) {
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
        }else if(state is MediumTermFailureState){
          return ErrorText(errMessage: state.errMessage);
        }else{
          return const AnimatedLoading();
        }
      },
    );
  }
}


