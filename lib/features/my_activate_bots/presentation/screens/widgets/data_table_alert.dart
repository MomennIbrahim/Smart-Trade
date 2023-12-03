import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/core/utils/sized.dart';
import '../../../../../core/constace.dart';
import '../../../../../core/utils/styles.dart';

class DataTableAlert extends StatelessWidget {
  DataTableAlert({super.key});

  final List<String> address = [
    'Number',
    'Name',
    'Profit Per',
    'Profit USDT',
    'Side',
    'Quantity',
    'Price',
    'Status',
    'Created At',
  ];
  final List<String> values = [
    '1',
    'Panda Bot',
    '.12',
    '0',
    'Buy',
    '12',
    '.13',
    'Success',
    '10-2-2023 13:00am',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.h,
      child: AlertDialog(
        backgroundColor: Constance.cardColor,
        scrollable: true,
        content: Column(
          children: [
            Scrollbar(
              thumbVisibility: true,
              interactive: true,
              radius: const Radius.circular(20.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: DataTable(
                  border: const TableBorder(
                    verticalInside: BorderSide(color: Colors.white38),
                  ),
                  dividerThickness: .5,
                  columns: List.generate(
                    address.length,
                    (index) => DataColumn(
                        label: Text(
                      address[index],
                      style: Styles.style18,
                    )),
                  ),
                  rows: List.generate(
                    1,
                    (index) => DataRow(
                        cells: List.generate(
                            values.length,
                            (index) => DataCell(Text(
                                  values[index],
                                  style: Styles.style14,
                                )))),
                  ),
                ),
              ),
            ),
            CustomSized.sizedHeight10,
            // Padding(
            //   padding: EdgeInsets.symmetric(horizontal: 70.0.w),
            //   child: const Divider(
            //     thickness: 1,
            //     color: Colors.blue,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
