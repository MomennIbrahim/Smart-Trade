import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_button.dart';

class MoreInformationButton extends StatelessWidget {
  const MoreInformationButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration:
      BoxDecoration(border: Border.all(color: Colors.blue)),
      child: CustomButton(
        paddingHorizontal: 0,
        text: 'More Information',
        onPressed: () {},
        buttonColor: Colors.transparent,
      ),
    );
  }
}
