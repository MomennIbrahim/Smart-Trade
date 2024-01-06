import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/constace.dart';
import '../../../../../core/utils/styles.dart';

class FeesInfoWidget extends StatelessWidget {
  const FeesInfoWidget({
    super.key,
    required this.text,
    required this.value,
  });

  final String text;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          padding: EdgeInsets.symmetric(vertical: 10.h),
          decoration: BoxDecoration(
              border: Border.all(color: Constance.cWhite, width: .5)),
          child: Column(
            children: [
              Text(
                value,
                style: Styles.style23.copyWith(color: Colors.green,fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              Text(
                text,
                style: Styles.styleGrey16,
                textAlign: TextAlign.center,
              ),
            ],
          )),
    );
  }
}
