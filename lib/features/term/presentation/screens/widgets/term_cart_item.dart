import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:task_app/core/constace.dart';
import 'package:task_app/core/utils/sized.dart';
import 'package:task_app/features/home/presentation/screens/widgets/points_row.dart';
import '../../../data/model/term_model.dart';

class TermCardItem extends StatelessWidget {
  const TermCardItem({super.key, required this.termModel, required this.index});

  final TermModel termModel;
  final int index;

  @override
  Widget build(BuildContext context) {
    return FadeIn(
      animate: true,
      duration: const Duration(seconds: 3),
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
                        termModel.data!.data![index].ticker!,
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('price: ${double.parse(termModel.data!.data![index].priceNow!).toStringAsFixed(2)}',
                                  style:
                                  const TextStyle(color: Constance.cWhite)),
                              SizedBox(
                                height: 5.h,
                              ),
                              Text('Profit: ${double.parse(termModel.data!.data![index].profit!).toStringAsFixed(2)}',
                                  style:
                                  const TextStyle(color: Constance.cWhite)),
                            ],
                          ),
                          CustomSized.sizedWidth20,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                               Text('update at: ${DateFormat('yyyy-MM-dd'
                                   ).format(DateTime.parse(termModel.data!.data![index].updatedAt!))}',
                                  style:
                                  const TextStyle(color: Colors.white)),
                              SizedBox(
                                height: 5.h,
                              ),
                               Text(DateFormat('HH:mm:ss').format(DateTime.parse(termModel.data!.data![index].updatedAt!)),
                                  style:
                                  const TextStyle(color: Colors.white)),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              CustomSized.sizedHeight20,
              PointsRow(text: 'Point1',value: termModel.data!.data![index].point1!,),
              PointsRow(text: 'Point2',value: termModel.data!.data![index].point2!,),
              PointsRow(text: 'Point3',value: termModel.data!.data![index].point3!,),
            ],
          ),
        ),
      ),
    );
  }
}
