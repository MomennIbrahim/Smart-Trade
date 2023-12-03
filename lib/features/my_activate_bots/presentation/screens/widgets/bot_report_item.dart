import 'package:flutter/material.dart';

import '../../../../../core/constace.dart';
import '../../../../../core/utils/styles.dart';

class BotReportItem extends StatelessWidget {
  const BotReportItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        color: Constance.cardColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(
                        'Name',
                        style: Styles.style14,
                      ),
                      Text(
                        'Panda Bot',
                        style: Styles.style12,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'Profit USDT',
                        style: Styles.style14,
                      ),
                      Text(
                        '15.0',
                        style: Styles.style12
                            .copyWith(color: Colors.green),
                      ),
                    ],
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Divider(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(
                        'Status',
                        style: Styles.style14,
                      ),
                      Text(
                        'Success',
                        style: Styles.style12
                            .copyWith(color: Colors.green),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'Created At',
                        style: Styles.style14,
                      ),
                      Text(
                        '2-10-2023 13:00',
                        style: Styles.style12
                            .copyWith(color: Colors.yellow),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
