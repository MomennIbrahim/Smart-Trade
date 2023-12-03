import 'package:flutter/material.dart';
import 'package:task_app/features/my_activate_bots/presentation/screens/widgets/data_table_alert.dart';

class MoreButtonOfReport extends StatelessWidget {
  const MoreButtonOfReport({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) => DataTableAlert(),
          );
        },
        icon: const Icon(Icons.more_vert));
  }
}
