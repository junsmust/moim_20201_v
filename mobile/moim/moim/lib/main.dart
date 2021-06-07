import 'package:flutter/material.dart';
import 'package:moim/navigator/NavigatorManager.dart';
import 'package:moim/screen/auth/ProfileRegisterScreen.dart';
import 'package:moim/screen/auth/SigninScreen.dart';
import 'package:moim/screen/auth/SignupScreen.dart';
import 'package:moim/screen/loading/SplashScreen.dart';
import 'package:moim/screen/main/MainScreen.dart';
import 'package:moim/screen/main/calendar/CalendarScreen.dart';
import 'package:moim/screen/main/member/MemberScreen.dart';
import 'package:moim/screen/main/vote/VoteScreen.dart';
import 'package:moim/screen/setting/AppSettingScreen.dart';
import 'package:moim/screen/setting/MyPageScreen.dart';

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
        ScreenType.spash.getPageType()            : (BuildContext context) => SplashScreen() ,
        ScreenType.signIn.getPageType()           : (BuildContext context) => SigninScreen() ,
        ScreenType.signUp.getPageType()           : (BuildContext context) => SignupScreen() ,
        ScreenType.registerProfile.getPageType()  : (BuildContext context) => ProfileRegisterScreen() ,
        ScreenType.mainMoim.getPageType()         : (BuildContext context) => MainScreen() ,
        ScreenType.tabMember.getPageType()        : (BuildContext context) => MemberScreen() ,
        ScreenType.tabCalendar.getPageType()      : (BuildContext context) => CalendarScreen() ,
        ScreenType.tabVote.getPageType()          : (BuildContext context) => VoteScreen() ,
        ScreenType.appSetting.getPageType()       : (BuildContext context) => AppSettingScreen() ,
        ScreenType.myPage.getPageType()           : (BuildContext context) => MyPageScreen() ,

      },
    );
  }
}

