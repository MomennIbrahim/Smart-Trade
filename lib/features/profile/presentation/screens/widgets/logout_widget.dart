import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:task_app/core/utils/app_router.dart';
import 'package:task_app/core/widgets/animated_loading.dart';
import 'package:task_app/core/widgets/success_snack_bar.dart';
import 'package:task_app/features/profile/presentation/controller/logout_cubit/logout_cubit.dart';
import '../../../../../core/utils/styles.dart';
import 'profile_button_widget.dart';

class LogoutWidget extends StatelessWidget {
  const LogoutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LogoutCubit, LogoutState>(
      listener: (context, state) {
        if(state is UserLogoutSuccessState){
          successSnackBar(context: context, message: state.userLogout.message!);
          GoRouter.of(context).go(AppRouter.kLoginScreen);
        }
      },
      builder: (context, state) {
        return state is UserLogoutLoadingState ? const AnimatedLoading() : ProfileButtonWidget(
          text: 'Logout',
          icon: Icons.logout,
          style: Styles.style18Red,
          onPressed: () {
            LogoutCubit.get(context).userLogout();
          },
        );
      },
    );
  }
}
