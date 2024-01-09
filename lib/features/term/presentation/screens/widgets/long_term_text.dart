import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_app/core/utils/service_locator.dart';
import 'package:task_app/core/widgets/animated_loading.dart';
import 'package:task_app/features/term/data/repository/term_repository_implementation.dart';
import 'package:task_app/features/term/presentation/controller/configuration_cubit/configuration_cubit.dart';
import 'package:task_app/features/term/presentation/screens/widgets/term_text_lorem.dart';

class LongTermTextDetail extends StatelessWidget {
  const LongTermTextDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ConfigurationCubit, ConfigurationState>(
      builder: (context, state) {
        if (ConfigurationCubit.get(context).model != null) {
          return TermTextLorem(text: ConfigurationCubit.get(context).model!.data!.longTerm.toString());
        } else {
          return const AnimatedLoading();
        }
      },
    );
  }
}
