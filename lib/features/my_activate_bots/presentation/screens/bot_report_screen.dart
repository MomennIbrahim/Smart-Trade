import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/core/utils/styles.dart';
import 'package:task_app/core/widgets/custom_app_bar.dart';
import 'package:task_app/core/widgets/custom_background.dart';

class BotReportScreen extends StatelessWidget {
  const BotReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(appbarText: 'Bot Report'),
      body: Container(
        height: double.infinity,
        decoration: customBackGround(),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: DataTable(
            columns: [
              DataColumn(
                  label: Text(
                'Number',
                style: Styles.style18,
              )),
              DataColumn(
                  label: Text(
                'Name',
                style: Styles.style18,
              )),
              DataColumn(
                  label: Text(
                'Profit Per ',
                style: Styles.style18,
              )),
              DataColumn(
                  label: Text(
                    'Profit USDT',
                    style: Styles.style18,
                  )),
            ],
            rows: List.generate(10, (index) =>  DataRow(cells: [
              DataCell(Text(
                '1',
                style: Styles.style14,
              )),
              DataCell(Text(
                'mtl  _fast_bot',
                style: Styles.style14,
              )),
              DataCell(Text(
                '0',
                style: Styles.style14,
              )),
              DataCell(Text(
                '0',
                style: Styles.style14,
              )),
            ]),),
          ),
        ),
      ),
    );
  }
}
