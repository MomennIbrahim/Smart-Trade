import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCarouselSlider extends StatelessWidget {
   CustomCarouselSlider({super.key, required this.items});

  final List<Widget> items ;
 final CarouselController carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      carouselController: carouselController ,
      options: CarouselOptions(
        height: 150.h,
        aspectRatio: 16 / 9,
        viewportFraction: .75,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 2),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        enlargeFactor: 0.3,
        scrollDirection: Axis.horizontal,
      ),
      items: items,
    );
  }
}
