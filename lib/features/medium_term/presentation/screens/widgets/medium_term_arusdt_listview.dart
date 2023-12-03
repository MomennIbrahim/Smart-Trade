import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../home/presentation/screens/widgets/arusdt_cart_item.dart';

class MediumTermArusdtListView extends StatelessWidget {
  const MediumTermArusdtListView({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 250.h,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index)=> const ArustdCardItem(),
        separatorBuilder: (context,index)=> SizedBox(height: 5.h,),
        itemCount: 5,
      ),
    );
  }
}
