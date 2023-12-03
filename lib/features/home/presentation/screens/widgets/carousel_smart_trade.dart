import 'package:flutter/material.dart';
import 'animation_text.dart';
import 'custom_carousel_slider.dart';

class CarouselSmartTrade extends StatelessWidget {
  const CarouselSmartTrade({super.key});

  @override
  Widget build(BuildContext context) {
    return  CustomCarouselSlider(
      items: [
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(5.0),
              child: const Image(
                image: AssetImage(
                    'assets/images/img5 1.png',),
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
            ),
            const CustomAnimationText(),
          ],
        ),
      ],
    );
  }
}
