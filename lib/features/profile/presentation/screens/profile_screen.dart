import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/core/utils/service_locator.dart';
import 'package:task_app/core/utils/sized.dart';
import 'package:task_app/core/widgets/animated_loading.dart';
import 'package:task_app/core/widgets/custom_background.dart';
import 'package:task_app/core/widgets/error_text.dart';
import 'package:task_app/features/profile/data/repository/profile_repository_implementation.dart';
import 'package:task_app/features/profile/presentation/controller/user_profile_cubit/user_profile_cubit.dart';
import 'package:task_app/features/profile/presentation/screens/widgets/edit_profile_button_widget.dart';
import 'package:task_app/features/profile/presentation/screens/widgets/fees_and_orer_row_widget.dart';
import 'package:task_app/features/profile/presentation/screens/widgets/user_image_and_name_widget.dart';
import 'widgets/contact_us_widget.dart';
import 'widgets/logout_widget.dart';
import 'widgets/person_info_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  // var profileNameController = TextEditingController();
  // var profileEmailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          UserProfileCubit(getIt.get<ProfileRepositoryImplementation>())
            ..getUserProfile(),
      child: BlocBuilder<UserProfileCubit, UserProfileState>(
        builder: (context, state) {
          if (state is UserProfileSuccessState) {
            return Scaffold(
              appBar: AppBar(
                title: const Text('My profile'),
              ),
              body: JelloIn(
                duration: const Duration(milliseconds: 1000),
                child: Container(
                  height: double.infinity,
                  decoration: customBackGround(),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 16.0.w, vertical: 12.0.h),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          UserImageAndNameWidget(
                              userProfileModel: state.userProfileModel),
                          CustomSized.sizedHeight50,
                          PersonInfoWidget(
                              text: '${state.userProfileModel.phone?? 'You did not enter any phone number'}', icon: Icons.phone),
                          CustomSized.sizedHeight10,
                          PersonInfoWidget(
                              text: state.userProfileModel.email.toString(),
                              icon: Icons.email_outlined,),
                          CustomSized.sizedHeight24,
                          FeesAndOrderRowWidget(userProfileModel: state.userProfileModel),
                          CustomSized.sizedHeight24,
                          const ContactUsWidget(),
                          CustomSized.sizedHeight15,
                          const EditProfileButtonWidget(),
                          CustomSized.sizedHeight24,
                          const Divider(),
                          CustomSized.sizedHeight20,
                          // CustomSized.sizedHeight50,
                          // Text(
                          //   'Name',
                          //   style: Styles.style18,
                          // ),
                          // CustomSized.sizedHeight10,
                          // ProfileNameTextField(
                          //     profileNameController: profileNameController),
                          // CustomSized.sizedHeight20,
                          // Text(
                          //   'Email',
                          //   style: Styles.style18,
                          // ),
                          // CustomSized.sizedHeight10,
                          // ProfileEmailTextField(
                          //     profileEmailController: profileEmailController),
                          // const ChangePasswordButton(),
                          // CustomSized.sizedHeight24,
                          const LogoutWidget(),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          } else if (state is UserProfileFailureState) {
            return ErrorText(
              errMessage: state.errMessage,
            );
          } else {
            return const AnimatedLoading();
          }
        },
      ),
    );
  }
}
