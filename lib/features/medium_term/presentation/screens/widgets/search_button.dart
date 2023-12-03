import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_button.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.blue)),
        child: CustomButton(
          paddingHorizontal: 0.0,
          text: 'Search',
          onPressed: () {},
          buttonColor: Colors.transparent,
        ));
  }
}
