import 'package:flutter/cupertino.dart';
import 'package:task_app/core/constace.dart';

BoxDecoration customBackGround(){
  return  const BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xff030f17),
            Color(0xff022945),
            Color(0xff033559),
            Color(0xff022945),
            Color(0xff030f17),
          ]));

  //   const BoxDecoration(
  //     image: DecorationImage(image: AssetImage(Constance.backgroundImage),fit: BoxFit.cover)
  // );
}