import 'package:flutter/cupertino.dart';
import 'package:task_app/core/constace.dart';

BoxDecoration customBackGround(){
  return const BoxDecoration(
      image: DecorationImage(image: AssetImage(Constance.backgroundImage),fit: BoxFit.cover)
  );
}