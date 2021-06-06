import 'dart:math';

import 'package:flutter/material.dart';

import 'HomiList.dart';

class TapContainerScreen extends StatefulWidget {

  @override
  _TapContainerScreenState createState() => _TapContainerScreenState();
}

class _TapContainerScreenState extends State<TapContainerScreen> {
  int defaultSelected = 0;
  
  List pageList = [
    HomiList(List<ListItem>.generate(
      1000 ,
        (i) => i % 6 == 0 ? HeaderItem("heading ${i}")
            : MessageItem("sender $i", "message $i")
    ))
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
   //  List<ListItem> items = List<ListItem>.generate(
   //    1000 ,
   //      (i) => i % 6 == 0 ? HeaderItem("heading ${i}")
   //          : MessageItem("sender $i", "message $i")
   //  );
   //
   // // pageList.add(items);
   //  setState(() {
   //    pageList = [HomiList(items)];
   //  });
    //print("items  ${items.length}");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageList[0] ,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.amberAccent,

        items: [
            BottomNavigationBarItem(icon: Icon(Icons.money) ,label: "money" ) ,
            BottomNavigationBarItem(icon: Icon(Icons.face) , label: "homies") ,
            BottomNavigationBarItem(icon: Icon(Icons.calendar_today) , label: "plan")
        ],
        currentIndex: defaultSelected,
        onTap: (index) {
          // if (index == 0) {
          //   Navigator.push(context, MaterialPageRoute(builder: (context) => HomiList()));
          // }
        },
    )
    );
  }
}
