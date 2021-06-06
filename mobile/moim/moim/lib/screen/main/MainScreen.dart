import 'package:flutter/material.dart';
import 'package:moim/navigator/NavigatorManager.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
