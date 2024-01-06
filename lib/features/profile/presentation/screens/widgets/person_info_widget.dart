import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/sized.dart';
import '../../../../../core/utils/styles.dart';

class PersonInfoWidget extends StatelessWidget {
  const PersonInfoWidget({super.key, required this.text, required this.icon});

  final String text;
  final IconData icon ;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon,size: 18.r,),
        CustomSized.sizedWidth15,
        Text(text,style: Styles.style14,),
      ],
    );
  }
}
