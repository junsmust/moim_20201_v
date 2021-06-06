import 'dart:async';

import 'package:flutter/material.dart';
import 'package:moim/navigator/NavigatorManager.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
  }
  startTimer() async {
    var duration = Duration(seconds: 3);
    var timer = Timer(duration, () {
      NavigatorManager.navigate(context, NavigatorType.replacement , "/auth/signIn");
    });
    return timer;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Text("SplashScreen" , style: TextStyle(color: Colors.black , fontSize: 13),),
      ),
    );
  }
}
