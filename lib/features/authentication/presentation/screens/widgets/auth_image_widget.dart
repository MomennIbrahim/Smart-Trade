import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthImageWidget extends StatelessWidget {
  const AuthImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        SizedBox(
            height: MediaQuery.of(context).size.height / 2,
            width: double.infinity,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(85.r),
                  bottomLeft: Radius.circular(85.r)),
              child: const Image(
                image: AssetImage('assets/images/logo.png'),
                fit: BoxFit.cover,
              ),
            ))
      ],
    );
  }
}
