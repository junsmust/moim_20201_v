import 'package:flutter/material.dart';
import 'package:moim/navigator/NavigatorManager.dart';
import 'package:moim/screen/main/calendar/CalendarScreen.dart';
import 'package:moim/screen/main/member/MemberScreen.dart';
import 'package:moim/screen/main/vote/VoteScreen.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var _currentIndex     = 0;
  Widget menuScreen     = new MemberScreen();
  Widget voteScreen     = new VoteScreen();
  Widget calendarScreen = new CalendarScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: configureBodyContentByTap(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: this._currentIndex ,
        onTap: (index) {setState(() {
              this._currentIndex = index;
          });
        },
        backgroundColor: Colors.white ,
        unselectedItemColor: Colors.black12,
        selectedItemColor: Colors.deepOrangeAccent,
        selectedFontSize: 13 ,
        unselectedFontSize: 10,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.supervised_user_circle_outlined) , label: "MEMBER" ) ,
          BottomNavigationBarItem(icon: Icon(Icons.calendar_today) , label: "CALENDAR") ,
          BottomNavigationBarItem(icon: Icon(Icons.how_to_vote) , label: "VOTE")
        ],
      ),
    );
  }

  /**
   * 탭 매뉴 선택시 화면 전환
   */
  Widget configureBodyContentByTap() {
    ScreenType type = ScreenType.tabMember;
        switch (_currentIndex) {
          case 0:
            return menuScreen;
          case 1:
            return calendarScreen;
          case 2:
            return voteScreen;
        }
  }
}
