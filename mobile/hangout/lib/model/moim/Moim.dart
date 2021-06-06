import 'package:flutter/cupertino.dart';
import 'package:hangout/model/auth/User.dart';
import 'package:hangout/model/moim/HangoutPoint.dart';
import 'package:hangout/screen/moim/member/MemberScreen.dart';

class Moim {
  String name;
  List<User> members = [];
  User captain;
  String startDate;
  List<HangoutPoint> hangoutPoints = [];
  String thumnail = null;

  static List<String> menus = [
    "멤버" ,
    "뉴스" ,
    "투표"
   ];

  static List<Widget> screens = [
    MemberScreen()
  ];
}