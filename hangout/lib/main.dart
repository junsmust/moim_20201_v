import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hangout/SplashScreen.dart';
import 'package:hangout/TapContainerScreen.dart';
import 'package:hangout/screen/auth/ProfileRegisterationScreen.dart';
import 'package:hangout/screen/auth/SignupScreen.dart';
import 'package:hangout/screen/invitation/InvitationScreen.dart';
import 'package:hangout/screen/main/MainScreen.dart';
import 'package:hangout/screen/moim/MoimScreen.dart';

import 'screen/auth/LoginScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return
      MaterialApp(
      title: 'Flutter Demo',
      // theme: ThemeData(
      //     primarySwatch: Colors.blue,
      //     primaryColor: Colors.white
      // ),
      home: MoimScreen()
    );
  }
}
