import 'package:flutter/material.dart';
import 'package:hangout/model/moim/Moim.dart';

class MoimScreen extends StatefulWidget {
  @override
  _MoimScreenState createState() => _MoimScreenState();
}

class _MoimScreenState extends State<MoimScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(Moim.menus[_selectedIndex])),
      body: getBody(),
      bottomNavigationBar: getBottomNavigationBar(),
    );
  }
  Widget getBody() {
    Widget bodyContent = Column();
    return Moim.screens[0];
  }

  /**
   * 하단 네비게이션 바
   * currentIndex를 설정해줘야 함
   * BottomNavigationBar에서 selectedColor , onTap event 처리 
   */
  Widget getBottomNavigationBar() {
    List<BottomNavigationBarItem> navigationItems =
        [
          BottomNavigationBarItem(icon: Icon(Icons.supervised_user_circle_sharp) ,
              activeIcon: Icon(Icons.supervised_user_circle_sharp , color: Colors.deepOrangeAccent,),
              label: Moim.menus[0] , ) ,
          BottomNavigationBarItem(icon: Icon(Icons.fiber_new_sharp) ,
              label: Moim.menus[1] ,  activeIcon: Icon(Icons.fiber_new_sharp , color: Colors.deepOrangeAccent,)) ,
          BottomNavigationBarItem(icon: Icon(Icons.where_to_vote) ,
              label: Moim.menus[2] , activeIcon: Icon(Icons.where_to_vote , color: Colors.deepOrangeAccent,)) ,
        ];
    Widget bottomNavigationBar = BottomNavigationBar(
      items: navigationItems ,
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.deepOrangeAccent,
      onTap: _bottomNavigationBarItemClicked,);
    return bottomNavigationBar;
  }

  void _bottomNavigationBarItemClicked(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

}
