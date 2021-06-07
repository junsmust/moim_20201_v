import 'package:flutter/material.dart';
import 'package:moim/navigator/NavigatorManager.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center ,
              crossAxisAlignment: CrossAxisAlignment.center ,
              children: [
                Text("MainScreen" , style: TextStyle(color: Colors.black , fontSize: 13),),
                TextButton(onPressed: () {}, child: Text("move to selected moim main"))
              ],
            )
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: this._currentIndex ,
        onTap: (index) {setState(() {
              this._currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.supervised_user_circle_outlined) , label: "member") ,
          BottomNavigationBarItem(icon: Icon(Icons.calendar_today) , label: "calendar") ,
          BottomNavigationBarItem(icon: Icon(Icons.how_to_vote) , label: "vote")
        ],
      ),
    );
  }
}
