import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'top_recomendation_item.dart';

class TopRecomendationListView extends StatelessWidget {
  const TopRecomendationListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const TopRecomendationItem(),
        separatorBuilder: (context, index) => SizedBox(
          height: 2.h,
        ),
        itemCount: 4,
      ),
    );
  }
}
