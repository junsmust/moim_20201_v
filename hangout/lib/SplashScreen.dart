import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hangout/screen/auth/LoginScreen.dart';
import 'package:hangout/util/SizeCollector.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    setTimer(context);

    return Scaffold(
      backgroundColor: Color(0xFF3F5CF9) ,//Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              padding: EdgeInsets.all(SizeCollector.bottomMargin.getSize()),
              child: Icon(
                Icons.calendar_today ,
                size: 50 ,
                color: Colors.white,
              ),
            ) ,
            Text("모임은 여기서" , style: TextStyle(fontSize: 15 , fontWeight: FontWeight.bold , color: Colors.white),)
          ],
        )
      ),
    );
  }


  void setTimer(BuildContext context) {
    var _duration = new Duration(seconds: 5);
    Timer(_duration, () {
      _pushLogin(context);
    });
  }

  void _pushLogin(BuildContext context) {
    Navigator.pushReplacement(context, PageRouteBuilder(pageBuilder: (context, animation, secondaryAnimation) => (
        LoginScreen()
    ) , transitionDuration: Duration(seconds: 5)));
  }
}
