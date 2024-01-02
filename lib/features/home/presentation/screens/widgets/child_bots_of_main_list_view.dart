import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_app/core/utils/service_locator.dart';
import 'package:task_app/core/utils/styles.dart';
import 'package:task_app/core/widgets/animated_loading.dart';
import 'package:task_app/features/home/data/repository/home_repository_implementation.dart';
import 'package:task_app/features/home/presentation/controller/child_bots_cubit.dart';
import '../../../../../core/utils/sized.dart';
import 'child_bots_of_main_item.dart';

class ChildBotsOfMainListView extends StatelessWidget {
  const ChildBotsOfMainListView({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
      ChildBotsCubit(getIt.get<HomeRepositoryImplementation>())
        ..getChildBotsOfMain(mainBotId: index),
      child: BlocBuilder<ChildBotsCubit, ChildBotsState>(
        builder: (context, state) {
          if(state is ChildBotsSuccessState) {
            return ListView.separated(
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) =>
             ChildBotsOfMainItem(childBotsModel: state.childBotsModel, index: index,),
            separatorBuilder: (context, index) => CustomSized.sizedHeight10,
            itemCount: state.childBotsModel.data!.data!.length,
          );
          }else if (state is ChildBotsFailureState){
            return Text(state.errMessage.toString(),style: Styles.style18Yellow,);
          }else{
            return const AnimatedLoading();
          }
        },
      ),
    );
  }
}
