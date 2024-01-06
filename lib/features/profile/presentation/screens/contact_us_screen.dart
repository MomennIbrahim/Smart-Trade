import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/core/constace.dart';
import 'package:task_app/core/utils/service_locator.dart';
import 'package:task_app/core/utils/sized.dart';
import 'package:task_app/core/utils/styles.dart';
import 'package:task_app/core/widgets/custom_background.dart';
import '../../data/repository/profile_repository_implementation.dart';
import '../controller/setting_cubit.dart';
import 'widgets/logo_card_widget.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
      SettingCubit(getIt.get<ProfileRepositoryImplementation>())
        ..getSetting(),
      child: BlocBuilder<SettingCubit, SettingState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Contact Us'),
            ),
            body: Container(
              decoration: customBackGround(),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0.w),
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomSized.sizedHeight24,
                      const LogoCardWidget(image: 'assets/images/whatsapp-logo-png-2276.png', text: 'WhatsApp'),
                      CustomSized.sizedHeight15,
                      const LogoCardWidget(image: 'assets/images/f-letter-logo-png-1574.png', text: 'FaceBook'),
                      CustomSized.sizedHeight15,
                      const LogoCardWidget(image: 'assets/images/logo-instagram-2435.png', text: 'Instagram'),
                      CustomSized.sizedHeight15,
                      const LogoCardWidget(image: 'assets/images/twitter-x-logo-42554.png', text: 'Twitter'),
                      CustomSized.sizedHeight15,
                      const LogoCardWidget(image: 'assets/images/youtube-logo-png-2075.png', text: 'Youtube'),
                      CustomSized.sizedHeight15,
                      const LogoCardWidget(image: 'assets/images/telepon-7735.png', text: 'Phone'),
                      CustomSized.sizedHeight15,
                      Text('If you need more support, Visit our website:',style: Styles.styleYellow14,),
                      Text('http://www.smart-trade-bot.com/',style: Styles.style16.copyWith(color: Constance.kPrimaryColor),),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
