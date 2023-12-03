import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/core/constace.dart';
import 'package:task_app/core/utils/sized.dart';
import 'package:task_app/features/home/presentation/screens/widgets/points_row.dart';

class ArustdCardItem extends StatelessWidget {
  const ArustdCardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return FadeIn(
      animate: true,
      duration: const Duration(seconds: 3),
      child: SizedBox(
        width: 300.w,
        child: Card(
          color: Constance.cardColor,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'ARUSDT',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25.sp,
                              fontWeight: FontWeight.bold,
                          ),
                        ),
                        CustomSized.sizedHeight15,
                        Row(
                          children: [
                            Column(
                              children: [
                                const Text('Price Now',
                                    style:
                                    TextStyle(color: Colors.white)),
                                SizedBox(
                                  height: 5.h,
                                ),
                                const Text('4.21',
                                    style:
                                    TextStyle(color: Colors.white)),
                              ],
                            ),
                            CustomSized.sizedWidth20,
                            Column(
                              children: [
                                const Text('2023-0315',
                                    style:
                                    TextStyle(color: Colors.white)),
                                SizedBox(
                                  height: 5.h,
                                ),
                                const Text('05:38:40',
                                    style:
                                    TextStyle(color: Colors.white)),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    CircleAvatar(
                      radius: 20.r,
                      backgroundColor: Colors.black26,
                      foregroundImage: const AssetImage(
                          'assets/images/lto 1.png'),
                    )
                  ],
                ),
                CustomSized.sizedHeight20,
                const PointsRow(text: 'Point1',value: 9.74548,),
                const PointsRow(text: 'Point2',value: 9.74548,),
                const PointsRow(text: 'Point3',value: 9.74548,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
