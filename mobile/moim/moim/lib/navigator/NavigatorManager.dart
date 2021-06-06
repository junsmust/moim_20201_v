import 'package:flutter/material.dart';

enum NavigatorType {
  push ,
  replacement ,
  popToPage ,
  pop
}
class NavigatorManager {

  static void navigate(BuildContext context ,NavigatorType  navigationType , String route) {
    switch (navigationType) {
      case NavigatorType.push:
        _push(context, route);
        return;
      case NavigatorType.pop:
        _pop(context);
        return;
      case NavigatorType.popToPage:
        return;
      case NavigatorType.replacement:
        _replace(context, route);
        return;
    }
  }
  static void _push(BuildContext context , String page) {
    Navigator.pushNamed(context, page);
  }

  static void _pop(BuildContext context) {
    if (Navigator.canPop(context)) {
      Navigator.pop(context);
    }
  }

  static void _replace(BuildContext context , String page) {
    Navigator.pushReplacementNamed(context, page);//pushReplacement(context, MaterialPageRoute(builder: (context) => page));
  }

  static void _popToPage(BuildContext context , Object page) {
    //Navigator.pop
  }
}