import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:hangout/common/base/BaseAppBar.dart';
import 'package:hangout/common/base/BaseStatefulScreen.dart';
import 'package:hangout/common/base/BaseText.dart';
import 'package:hangout/common/custom/MoinListElementView.dart';
import 'package:hangout/common/listItem/InvitationItem.dart';
import 'package:hangout/util/FontSize.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  MoimListElementView moimListItem = MoimListElementView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black ,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(child:  BaseAppBar(title: "moim" , bgColor: Colors.black, titleColor: Colors.white,)  , flex: 1,)
         ,
            Expanded(child:
              SingleChildScrollView(
                child: Column(
                  children: [
                    //InvitationItem(() {log("card view clicked ")} , "모임 타이틀").getInvitationItemView(context)
                  ],
                ),
              ),
            flex: 9,)

          ],
        )


      ),
    );
  }
  Widget _getMoimRepresentImg() {
    String defaultImageURL = "https://image.flaticon.com/icons/png/512/900/900783.png";

    Widget defaultThumnail = Image.network(defaultImageURL);

    // if (this._moim.thumnail != null) {
    //   return SizedBox(
    //     width: 100 ,
    //     height: 100 ,
    //     child: Image.network(_moim.thumnail),
    //   );
    // }
    // else {
    //
    // }
    return Container(
      width: 100 ,
      height: 100 ,
      color: Colors.blue,
    );
  }

  Widget getListItem() {
    return
      Padding(padding: EdgeInsets.only(top: 15 , right: 20 , left: 20) ,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.black) ,
          borderRadius: BorderRadius.all(Radius.circular(15))
        ),
        width: double.infinity,
        height: 150 ,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start ,
            crossAxisAlignment: CrossAxisAlignment.center ,
            children: [
              Image.network("https://image.flaticon.com/icons/png/512/900/900783.png") ,
              Container(
                margin: EdgeInsets.only(left: 15 , right: 15),
                child: BaseText( "로어 FC", TextAlign.start , Colors.black ,  FontSize.big25 , TextStyle(fontWeight: FontWeight.bold)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
