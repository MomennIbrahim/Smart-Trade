import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/core/utils/service_locator.dart';
import 'package:task_app/core/utils/styles.dart';
import 'package:task_app/core/widgets/animated_loading.dart';
import 'package:task_app/core/widgets/cahed_network.dart';
import 'package:task_app/core/widgets/error_text.dart';
import 'package:task_app/features/home/data/repository/home_repository_implementation.dart';
import 'package:task_app/features/home/presentation/controller/slider_cubit.dart';
import 'custom_carousel_slider.dart';

class CarouselSmartTrade extends StatelessWidget {
  const CarouselSmartTrade({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SliderCubit(getIt.get<HomeRepositoryImplementation>())..getSliders(),
      child: BlocBuilder<SliderCubit, SliderState>(
        builder: (context, state) {
          if (state is SliderSuccessState) {
            return CustomCarouselSlider(
              items: state.slidersModel.data!.map((e) {
                return Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20.r),
                      child: CustomCachedNetWorkImage(image: e.image??'https://www.smart-trade-bot.com/uploads/home-sliders/51503203.jpg'),
                    ),
                    Positioned(
                        left: 20.w,
                        top: 20.h,
                        child: FadeInUpBig(
                            duration: const Duration(milliseconds: 2500),
                            child: Text(
                              e.text ?? 'Smart Trade',
                              style: Styles.style18Yellow,
                            )))
                  ],
                );
              }).toList(),
            );
          } else if (state is GetSliderFailureState) {
            return ErrorText(errMessage: state.errMessage);
          } else {
            return const AnimatedLoading();
          }
        },
      ),
    );
  }
}
