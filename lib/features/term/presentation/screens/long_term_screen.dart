import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_app/core/utils/service_locator.dart';
import 'package:task_app/core/utils/sized.dart';
import 'package:task_app/core/utils/styles.dart';
import 'package:task_app/core/widgets/custom_app_bar.dart';
import 'package:task_app/core/widgets/custom_background.dart';
import 'package:task_app/features/drawer/presentation/controller/drawer_cubit.dart';
import 'package:task_app/features/term/data/repository/term_repository_implementation.dart';
import 'package:task_app/features/term/presentation/controller/long_term_cubit/long_term_cubit.dart';
import '../../../drawer/presentation/screens/drawer_widget.dart';
import 'widgets/long_term_card_listview.dart';
import 'widgets/medium_term_text_detail.dart';

class LongTermScreen extends StatelessWidget {
  const LongTermScreen({super.key,});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LongTermCubit(getIt.get<TermRepositoryImplementation>())..getLongTerm(),
      child: Scaffold(
        appBar: const CustomAppBar(appbarText: 'Long Term'),
        drawer: DrawerWidget(currentIndex: DrawerCubit
            .get(context)
            .currentIndex),
        body: Container(
          height: double.infinity,
          decoration: customBackGround(),
          child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Long Term',
                        style: Styles.style35,
                      ),
                      CustomSized.sizedHeight20,
                      const MediumTermTextDetail(),
                      CustomSized.sizedHeight24,
                      CustomSized.sizedHeight20,
                      const LongTermListView(),
                    ]),
              )),
        ),
      ),
    );
  }
}
