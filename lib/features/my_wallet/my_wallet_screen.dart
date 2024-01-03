import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/core/utils/sized.dart';
import 'package:task_app/core/utils/styles.dart';
import 'package:task_app/core/widgets/custom_app_bar.dart';
import 'package:task_app/core/widgets/custom_background.dart';
import '../drawer/presentation/screens/drawer_widget.dart';
import 'presentation/screens/widgets/api_Passpharse_field.dart';
import 'presentation/screens/widgets/api_key_field.dart';
import 'presentation/screens/widgets/api_secret_field.dart';
import 'presentation/screens/widgets/drop_button_field.dart';
import 'presentation/screens/widgets/more_information_button.dart';
import 'presentation/screens/widgets/save_and_rest_button.dart';

class MyWalletScreen extends StatelessWidget {
  MyWalletScreen({super.key,});

  var apiSecretController = TextEditingController();
  var apiKeyController = TextEditingController();
  var apiPassphraseFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(appbarText: 'My Wallet'),
      drawer: DrawerWidget(currentIndex: 4),
      body: Container(height: double.infinity,
        decoration: customBackGround(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomSized.sizedHeight20,
                Text(
                  'My Wallet',
                  style: Styles.style23.copyWith(fontWeight: FontWeight.bold),
                ),
                CustomSized.sizedHeight24,
                const WalletDropButtonField(),
                CustomSized.sizedHeight15,
                ApiSecretField(walletController: apiSecretController),
                CustomSized.sizedHeight15,
                ApiKeyField(apiKeyController: apiKeyController),
                CustomSized.sizedHeight15,
                ApiPassphraseField(
                    apiPassphraseFieldController: apiPassphraseFieldController),
                CustomSized.sizedHeight24,
                const SaveAndRestButton(),
                CustomSized.sizedHeight24,
                const MoreInformationButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
