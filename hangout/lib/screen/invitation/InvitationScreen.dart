import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:hangout/common/base/BaseAppBar.dart';
import 'package:hangout/common/base/BaseText.dart';
import 'package:hangout/common/listItem/InvitationItem.dart';
import 'package:hangout/service/invitation/InvitationService.dart';
import 'package:hangout/util/FontSize.dart';

class InvitationScreeen extends StatefulWidget {
  @override
  _InvitationScreeenState createState() => _InvitationScreeenState();
}

String freindDemoURL =
    "https://www.google.com/imgres?imgurl=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FbU7mRp%2FbtqDsPmYTKf%2F2kU3eFOTh8Rhi3LroP5BaK%2Fimg.jpg&imgrefurl=https%3A%2F%2Fsharinghappy.tistory.com%2F33&tbnid=Y15T4s1r6TYV4M&vet=12ahUKEwj117XF6-3wAhVEed4KHc0bBjQQMygCegUIARDaAQ..i&docid=uixe2o3jmUPxVM&w=800&h=530&q=%EC%B9%9C%EA%B5%AC%EB%93%A4&ved=2ahUKEwj117XF6-3wAhVEed4KHc0bBjQQMygCegUIARDaAQ";

class _InvitationScreeenState extends State<InvitationScreeen> {
  //List<Widget> items = <Widget>[InvitationItem(url: freindDemoURL , moimTitle: "친구들1").getInvitationItemView() , InvitationItem(url: freindDemoURL , moimTitle: "친구들2").getInvitationItemView() , InvitationItem(url: freindDemoURL , moimTitle: "친구들3").getInvitationItemView()];
  List<InvitationItem> items = InvitationService.service.getInvitations();
  //InvitationItem(() {log("card view clicked ");} , "모임 타이틀").getInvitationItemView(context),
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    /**
     * 초대장 List API call
     */
  }

  List<Widget> _getInvitationList() {
    List<Widget> invitationCards = items
        .map<Widget>((invitation) {
      return invitation.getInvitationItemView(context);
    }).toList();

    log("_getInvitationList called"+invitationCards.toString());
    return invitationCards;
  }

// ,
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: BaseText("초대권" , TextAlign.center , Colors.black , FontSize.mid15 , null ), backgroundColor: Colors.white,),
      body: SafeArea(
        child: Container(
            color: Colors.white,
            child: Column(
              children: [
                Expanded(child: _getListView() , flex: 8 ,) ,
                Padding(padding: EdgeInsets.only(top: 15 , left: 20 , right: 20 , bottom: 20)
                  , child: Container(
                    color: Colors.transparent,
                    width: double.infinity ,
                    height: 50 ,
                    child: RaisedButton( onPressed: () {} , child: Text("스킵하기" , style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold),) , color: Colors.deepOrangeAccent, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)) , ),
                  ),)
              ],
            )
        ),
      )
    );
  }

  /**
   * 초대권 리스트 
   */
  Widget _getListView() {
    ListView invitationList = ListView.builder(itemCount: items.length,
        padding: EdgeInsets.only(top: 15, left: 20, right: 20 , bottom: 15),
        scrollDirection: Axis.vertical,
        shrinkWrap: true  ,
        itemBuilder: (BuildContext context, int index) {
          items[index].setEventCallbackAndItemIndex(index, _acceptBtnClicked  , _denyBtnClicked);
          return _getInvitationList()[index];
        });
    
    return invitationList;
  }

  void _acceptBtnClicked(int index) {
    log("_acceptBtnClicked");
  }

  void _denyBtnClicked(int index) {
    log("_denyBtnClicked");
  }
}

