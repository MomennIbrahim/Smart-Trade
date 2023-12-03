import 'package:flutter/material.dart';
import 'package:task_app/core/utils/sized.dart';
import 'package:task_app/core/utils/styles.dart';
import 'package:task_app/core/widgets/custom_app_bar.dart';
import 'package:task_app/core/widgets/custom_background.dart';
import 'package:task_app/features/long_term/presentation/screens/widgets/long_term_arusdt_listview.dart';
import 'package:task_app/features/long_term/presentation/screens/widgets/long_term_text_detail.dart';
import '../../../home/presentation/screens/widgets/drawer_widget.dart';
import '../../../medium_term/presentation/screens/widgets/search_button.dart';

class LongTermScreen extends StatelessWidget {
   const LongTermScreen({super.key,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(appbarText: 'Long Term'),
      drawer: DrawerWidget(currentIndex: 7),
      body: SingleChildScrollView(
        child: Container(
          decoration: customBackGround(),
          child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Long Term',
                      style: Styles.style35,
                    ),
                    CustomSized.sizedHeight20,
                    const LongTermTextDetail(),
                    CustomSized.sizedHeight24,
                    const SearchButton(),
                    CustomSized.sizedHeight20,
                    const LongTermArusdtListView(),
                  ])),
        ),
      ),
    );
  }
}
