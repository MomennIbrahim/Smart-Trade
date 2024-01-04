import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/core/utils/sized.dart';
import 'package:task_app/core/utils/styles.dart';
import 'package:task_app/core/widgets/custom_background.dart';
import 'package:task_app/features/profile_screen/presentation/screens/widgets/contact_us_widget.dart';
import 'package:task_app/features/profile_screen/presentation/screens/widgets/profile_button_widget.dart';
import 'package:task_app/features/profile_screen/presentation/screens/widgets/fees_info_widget.dart';
import 'package:task_app/features/profile_screen/presentation/screens/widgets/logout_widget.dart';
import 'package:task_app/features/profile_screen/presentation/screens/widgets/person_info_widget.dart';
import 'package:task_app/features/profile_screen/presentation/screens/widgets/user_name.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  // var profileNameController = TextEditingController();
  // var profileEmailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
            padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 12.0.h),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 40.r,
                        backgroundImage: const NetworkImage(
                            'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png'),
                      ),
                      CustomSized.sizedWidth10,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const UserName(),
                          CustomSized.sizedHeight5,
                          Text(
                            'Active',
                            style: Styles.styleGreen16,
                          ),
                        ],
                      ),
                    ],
                  ),
                  CustomSized.sizedHeight50,
                  const PersonInfoWidget(
                      text: '(+20)-11548798', icon: Icons.phone),
                  CustomSized.sizedHeight10,
                  const PersonInfoWidget(
                      text: 'Momen@gmail.com', icon: Icons.email_outlined),
                  CustomSized.sizedHeight24,
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      FeesInfoWidget(value: '\$140', text: 'Fees'),
                      FeesInfoWidget(value: '12', text: 'Order'),
                    ],
                  ),
                  CustomSized.sizedHeight24,
                  const ContactUsWidget(),
                  CustomSized.sizedHeight15,
                  ProfileButtonWidget(text: 'Edit Profile', icon: Icons.edit, onPressed: (){},),
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
  }
}
