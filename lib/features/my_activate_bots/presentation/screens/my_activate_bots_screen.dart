import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_app/core/widgets/custom_app_bar.dart';
import 'package:task_app/core/widgets/custom_background.dart';
import 'package:task_app/features/drawer/presentation/controller/drawer_cubit.dart';
import 'package:task_app/features/my_activate_bots/presentation/screens/widgets/my_activate_bots_list_view.dart';
import '../../../../core/utils/service_locator.dart';
import '../../../drawer/presentation/screens/drawer_widget.dart';
import '../../data/repository/my_bots_repository_implementation.dart';
import '../controller/activate_bots_cubit/activate_bots_cubit.dart';

class MyActivateBotsScreen extends StatelessWidget {
  const MyActivateBotsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ActivateBotsCubit(getIt.get<MyBotsRepositoryImplementation>())
        ..getActivateBots(),
      child: Scaffold(
        appBar: const CustomAppBar(appbarText: 'My Activate Bots'),
        drawer: DrawerWidget(currentIndex: DrawerCubit
            .get(context)
            .currentIndex),
        body: Container(
          decoration: customBackGround(),
          child: const MyActivateBotsListView(),
        ),
      ),
    );
  }
}
