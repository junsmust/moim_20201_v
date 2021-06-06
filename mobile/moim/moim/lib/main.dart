import 'package:flutter/material.dart';
import 'package:moim/screen/auth/ProfileRegisterScreen.dart';
import 'package:moim/screen/auth/SigninScreen.dart';
import 'package:moim/screen/auth/SignupScreen.dart';
import 'package:moim/screen/loading/SplashScreen.dart';
import 'package:moim/screen/main/MainScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      routes: <String , WidgetBuilder> {
        '/splash' : (BuildContext context) => SplashScreen() ,
        '/auth/signIn'  : (BuildContext context) => SigninScreen() ,
        '/auth/signup'  : (BuildContext context) => SignupScreen() ,
        '/auth/registerProfile'  : (BuildContext context) => ProfileRegisterScreen() ,
        '/main'  : (BuildContext context) => MainScreen() ,
        '/main/memberMenu'  : (BuildContext context) => SplashScreen() ,
        '/main/calendarMenu'  : (BuildContext context) => SplashScreen() ,
        '/main/voteMenu'  : (BuildContext context) => SplashScreen() ,
        '/main/setting'  : (BuildContext context) => SplashScreen() ,
        '/main/myPage'  : (BuildContext context) => SplashScreen() ,
      },
    );
  }
}

