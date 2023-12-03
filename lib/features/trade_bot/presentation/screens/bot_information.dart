import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/core/constace.dart';
import 'package:task_app/core/utils/sized.dart';
import 'package:task_app/core/utils/styles.dart';
import 'package:task_app/core/widgets/custom_app_bar.dart';
import 'package:task_app/core/widgets/custom_background.dart';
import 'package:task_app/core/widgets/custom_button.dart';

class BotInformation extends StatelessWidget {
  const BotInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(appbarText: 'Bot Information'),
      // bottomNavigationBar: CustomButton(text: 'Shutdown', onPressed: (){},buttonColor: Colors.blue,paddingHorizontal: 0,height: 50,),
      body: Container(
        decoration: customBackGround(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CustomSized.sizedHeight24,
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.circular(20.0)),
                child: Card(
                  color: Constance.cardColor,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Column(
                      children: [
                        Text(
                          'Per Year',
                          style: Styles.style18,
                        ),
                        CustomSized.sizedHeight10,
                        Text(
                          '108.0%',
                          style: Styles.style18.copyWith(color: Colors.green),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              CustomSized.sizedHeight20,
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.circular(20.0)),
                child: Card(
                  color: Constance.cardColor,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Column(
                      children: [
                        Text(
                          'Per Month',
                          style: Styles.style18,
                        ),
                        CustomSized.sizedHeight10,
                        Text(
                          '9.0%',
                          style: Styles.style18.copyWith(color: Colors.green),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              CustomSized.sizedHeight20,
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.circular(20.0)),
                child: Card(
                  color: Constance.cardColor,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Column(
                      children: [
                        Text(
                          'Per Day',
                          style: Styles.style18,
                        ),
                        CustomSized.sizedHeight10,
                        Text(
                          '0.3%',
                          style: Styles.style18.copyWith(color: Colors.green),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              CustomSized.sizedHeight50,
              CustomButton(
                text: 'Shutdown',
                onPressed: () {},
                buttonColor: Colors.blue,
                paddingHorizontal: 80.w,
                height: 40.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
