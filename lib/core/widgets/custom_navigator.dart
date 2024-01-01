import 'package:flutter/material.dart';

customNavigator({required BuildContext context, required Widget widget}) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => widget));
}

customNavigatorAndReplacement(
    {required BuildContext context, required Widget widget}) {
  Navigator.of(context)
      .pushReplacement(MaterialPageRoute(builder: (context) => widget));
}

customNavigatorAndRemoveUntil(
    {required BuildContext context, required Widget widget}) {
  Navigator.of(context).pushAndRemoveUntil(
    MaterialPageRoute(builder: (context) => widget),
    (route) => false,
  );
}
