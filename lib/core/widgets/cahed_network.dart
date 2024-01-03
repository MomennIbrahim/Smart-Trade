import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'animated_loading.dart';

class CustomCachedNetWorkImage extends StatelessWidget {
  const CustomCachedNetWorkImage({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: image,
      fit: BoxFit.cover,
      placeholder: (context, url) => const AnimatedLoading(),
      errorWidget: (context, url, error) =>
          Center(
            child: LoadingAnimationWidget.dotsTriangle(
                size: 50, color: Colors.red
            ),
          ),
    );
  }
}
