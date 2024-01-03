import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/core/utils/service_locator.dart';
import 'package:task_app/core/utils/sized.dart';
import 'package:task_app/core/utils/styles.dart';
import 'package:task_app/core/widgets/custom_app_bar.dart';
import 'package:task_app/core/widgets/custom_background.dart';
import 'package:task_app/features/drawer/presentation/controller/drawer_cubit.dart';
import '../../../drawer/presentation/screens/drawer_widget.dart';
import '../../data/repository/term_repository_implementation.dart';
import '../controller/medium_term_cubit/medium_term_cubit.dart';
import 'widgets/medium_term_card_listview.dart';
import 'widgets/medium_term_text_detail.dart';

class MediumTermScreen extends StatelessWidget {
  const MediumTermScreen({super.key,});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MediumTermCubit(getIt.get<TermRepositoryImplementation>())..getMediumTerm(),
      child: Scaffold(
        appBar: const CustomAppBar(appbarText: 'Medium Term'),
        drawer: DrawerWidget(currentIndex: DrawerCubit
            .get(context)
            .currentIndex),
        body: SingleChildScrollView(
          child: Container(
            decoration: customBackGround(),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 16.0.w),
                    child: Text(
                      'Medium Term',
                      style: Styles.style35,
                    ),
                  ),
                  CustomSized.sizedHeight20,
                  const MediumTermTextDetail(),
                  CustomSized.sizedHeight24,
                  CustomSized.sizedHeight20,
                  const MediumTermListView(),
                  CustomSized.sizedHeight20,
                ]),
          ),
        ),
      ),
    );
  }
}
