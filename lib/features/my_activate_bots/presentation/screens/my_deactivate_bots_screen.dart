import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_app/core/widgets/custom_app_bar.dart';
import 'package:task_app/core/widgets/custom_background.dart';
import 'package:task_app/features/drawer/presentation/controller/drawer_cubit.dart';
import 'package:task_app/features/drawer/presentation/screens/drawer_widget.dart';
import 'package:task_app/features/my_activate_bots/presentation/screens/widgets/my_deactivate_bots_list_view.dart';
import '../../../../core/utils/service_locator.dart';
import '../../data/repository/my_bots_repository_implementation.dart';
import '../controller/de_activate_bots_cubit/de_activate_bots_cubit.dart';

class MyDeActivateBotsScreen extends StatelessWidget {
  const MyDeActivateBotsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DeActivateBotsCubit(getIt.get<MyBotsRepositoryImplementation>())
        ..getDeActivateBots(),
      child: Scaffold(
        appBar: const CustomAppBar(appbarText: 'My DeActivate Bots'),
        drawer: DrawerWidget(currentIndex: DrawerCubit
            .get(context)
            .currentIndex),
        body: Container(
          decoration: customBackGround(),
          child: const MyDeActivateBotsListView(),
        ),
      ),
    );
  }
}
