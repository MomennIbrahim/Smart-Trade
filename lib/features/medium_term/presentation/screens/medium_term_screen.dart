import 'package:flutter/material.dart';
import 'package:task_app/core/utils/sized.dart';
import 'package:task_app/core/utils/styles.dart';
import 'package:task_app/core/widgets/custom_app_bar.dart';
import 'package:task_app/core/widgets/custom_background.dart';
import '../../../home/presentation/screens/widgets/drawer_widget.dart';
import 'widgets/medium_term_arusdt_listview.dart';
import 'widgets/medium_term_text_detail.dart';
import 'widgets/search_button.dart';

class MediumTermScreen extends StatelessWidget {
  const MediumTermScreen({super.key,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(appbarText: 'Medium Term'),
      drawer: DrawerWidget(currentIndex: 6),
      body: SingleChildScrollView(
        child: Container(
          decoration: customBackGround(),
          child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Medium Term',
                      style: Styles.style35,
                    ),
                    CustomSized.sizedHeight20,
                    const MediumTermTextDetail(),
                    CustomSized.sizedHeight24,
                    const SearchButton(),
                    CustomSized.sizedHeight20,
                    const MediumTermArusdtListView(),
                  ])),
        ),
      ),
    );
  }
}
