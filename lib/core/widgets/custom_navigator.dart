import 'package:flutter/material.dart';
import 'navigation_animation.dart';

customNavigator({required BuildContext context,required Widget widget}){
  Navigator.of(context).push(CustomPageRoute(page: widget));
}

customNavigatorAndReplacement({required BuildContext context,required Widget widget}){
  Navigator.of(context).pushReplacement(CustomPageRoute(page: widget));
}

customNavigatorAndRemoveUntil({required BuildContext context,required Widget widget}){
  Navigator.of(context).pushAndRemoveUntil(CustomPageRoute(page: widget),(route) => false,);
}