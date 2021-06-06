import 'package:flutter/material.dart';

class BaseScreen extends StatelessWidget {
  /**
   * push screen
   */
  void pushToScreen(BuildContext context , Widget screen) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }

}