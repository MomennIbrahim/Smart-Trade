import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_app/features/term/presentation/controller/configuration_cubit/configuration_cubit.dart';
import '../../../../../core/widgets/custom_app_bar.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ConfigurationCubit, ConfigurationState>(
      builder: (context, state) {
        return CustomAppBar(
          appbarText:
             state is ConfigurationSuccessState? state.configurationModel.data!.appName.toString() : '',
        );
      },
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
