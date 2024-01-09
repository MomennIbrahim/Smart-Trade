import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/core/utils/service_locator.dart';
import 'package:task_app/core/widgets/animated_loading.dart';
import 'package:task_app/features/term/data/repository/term_repository_implementation.dart';
import 'package:task_app/features/term/presentation/controller/configuration_cubit/configuration_cubit.dart';
import 'package:task_app/features/term/presentation/screens/widgets/term_text_lorem.dart';
import '../../../../../core/utils/sized.dart';
import '../../../../../core/utils/styles.dart';

class MediumTermTextDetail extends StatelessWidget {
  const MediumTermTextDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ConfigurationCubit, ConfigurationState>(
      builder: (context, state) {
        if (ConfigurationCubit.get(context).model != null) {
          return TermTextLorem(text: ConfigurationCubit.get(context).model!.data!.mediumTerm.toString());
        } else {
          return const AnimatedLoading();
        }
      },
    );
  }
}
