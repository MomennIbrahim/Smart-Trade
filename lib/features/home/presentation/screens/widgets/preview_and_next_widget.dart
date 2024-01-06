import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/core/widgets/animated_loading.dart';
import 'package:task_app/core/widgets/error_text.dart';
import 'package:task_app/features/home/presentation/controller/child_bots_cubit.dart';
import '../../../../../core/constace.dart';
import '../../../../../core/utils/styles.dart';

class PreviewAndNextWidget extends StatelessWidget {
  const PreviewAndNextWidget({super.key, required this.mainBotId});

  final int mainBotId;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChildBotsCubit, ChildBotsState>(
      builder: (context, state) {
        if (state is ChildBotsSuccessState) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              if (state.childBotsModel.data!.currentPage! > 1)
                GestureDetector(
                  onTap: () {
                    ChildBotsCubit.get(context)
                        .previewPage(mainBotId: mainBotId);
                  },
                  child: Text(
                    '< Preview',
                    style: Styles.style16,
                  ),
                ),
              if (state.childBotsModel.data!.lastPage! > 1)
                CircleAvatar(
                  radius: 15.r,
                  backgroundColor: Constance.kPrimaryColor,
                  child: Text(
                    '${state.childBotsModel.data!.currentPage}',
                    style: Styles.style14,
                  ),
                ),
              if (state.childBotsModel.data!.currentPage! <
                  state.childBotsModel.data!.lastPage!)
                GestureDetector(
                    onTap: () {
                      ChildBotsCubit.get(context)
                          .nextPage(mainBotId: mainBotId);
                    },
                    child: Text(
                      'Next >',
                      style: Styles.style16,
                    )),
            ],
          );
        } else if (state is ChildBotsFailureState) {
          return ErrorText(errMessage: state.errMessage);
        } else {
          return const AnimatedLoading();
        }
      },
    );
  }
}
