import 'package:flutter/material.dart';

enum NavigatorType {
  push ,
  replacement ,
  popToPage ,
  pop
}
enum ScreenType {
  spash ,
  signIn ,
  signUp ,
  registerProfile ,
  mainMoimList ,
  mainMoim ,
  tabMember ,
  tabCalendar ,
  tabVote ,
  tabMemberInvitation ,
  tabVoteCreate ,
  tabVoteDetail ,
  tabCalendarDetail ,
  tabCalendarRegister ,
  appSetting ,
  myPage
}

extension StringOnScreenType on ScreenType {
  String getPageType() {
    switch (this) {
      case ScreenType.spash:
        return "/splash";
      case ScreenType.signIn:
        return '/auth/signIn';
      case ScreenType.signUp:
        return '/auth/signup';
      case ScreenType.registerProfile:
        return '/auth/registerProfile';
      case ScreenType.mainMoim:
        return '/main';
      case ScreenType.tabMember:
        return '/main/memberMenu';
      case ScreenType.tabCalendar:
        return '/main/calendarMenu';
      case ScreenType.tabVote:
        return '/main/voteMenu';
      case ScreenType.tabMemberInvitation:
        return 'main/memberMenu/invitation';
      case ScreenType.tabCalendarDetail:
        return 'main/calendarMenu/detail';
      case ScreenType.tabCalendarRegister:
        return 'main/calendarMenu/register';
      case ScreenType.tabVoteCreate:
        return 'main/voteMenu/create';
      case ScreenType.tabVoteDetail:
        return 'main/voteMenu/detail';
      case ScreenType.appSetting:
        return 'app/setting';
      case ScreenType.myPage:
        return 'app/myPage';
    }
  }
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