import 'package:flutter/material.dart';
import 'package:task_app/core/widgets/custom_app_bar.dart';
import 'package:task_app/core/widgets/custom_background.dart';
import 'package:task_app/features/drawer/presentation/controller/drawer_cubit.dart';
import 'package:task_app/features/drawer/presentation/screens/drawer_widget.dart';
import 'package:task_app/features/st_wallet/presentation/screens/widgets/st_wallet_listview.dart';
import 'package:task_app/features/st_wallet/presentation/screens/widgets/st_wallet_text.dart';
import '../../../../core/utils/sized.dart';

class StWalletScreen extends StatelessWidget {
  const StWalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(appbarText: 'ST Wallet',),
      drawer: DrawerWidget(currentIndex: DrawerCubit.get(context).currentIndex),
      body: Container(
        decoration: customBackGround(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CustomSized.sizedHeight10,
           const StWalletText(),
            const StWalletListView(),
            CustomSized.sizedHeight20,
          ],
        ),
      ),
    );
  }
}
