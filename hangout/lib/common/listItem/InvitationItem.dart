import 'dart:ffi';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hangout/common/base/BaseText.dart';
import 'package:hangout/util/FontSize.dart';

class InvitationItem {
  String url;
  String moimTitle;
  Function(int) acceptBtnEvent;
  Function(int) denyBtnEvent;
  int index;

  final BorderRadius _baseBorderRadius = BorderRadius.circular(20);

  InvitationItem( this.moimTitle , {this.url});

  Widget getInvitationItemView(BuildContext context) {

    Widget card = Card(
      color: Colors.white,
      shape:  RoundedRectangleBorder(borderRadius: _baseBorderRadius) ,
      margin: EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween ,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _getThumnailAndMoimTitle() ,
          _getDenyAndAcceptBtn()
        ],
      ),
    );
    return Container(
      height: 110 ,
      child: GestureDetector(
        child: card ,
      ),
    );
  }

  /**
   * 초대장 썸네일
   */
  Widget _getThumnail() {
    Widget thumnail = Container(
      width: 50 ,
      height: 50 ,
      decoration: BoxDecoration(color: Colors.black12, borderRadius: BorderRadius.all(Radius.circular(25)) ),
        child: Image.network("https://image.flaticon.com/icons/png/512/900/900783.png")
    );
    return thumnail;
  }

  /**
   * 모임 이름
   */
  Widget _getTitle() {
    Widget title = BaseText(this.moimTitle, TextAlign.start , Colors.black , FontSize.mid17, TextStyle(fontWeight: FontWeight.bold));

    return title;
  }

  Widget _getDenyAndAcceptBtn() {
    Widget denyAndAcceptBtn = Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TextButton(onPressed: () {denyBtnEvent(this.index);} , child: Text("거절" , style: TextStyle(color: Colors.white, fontSize: FontSize.small13 , fontWeight: FontWeight.bold), ) , style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.red)),) ,
        Padding(padding: EdgeInsets.only(left: 10 , right: 10) , child: TextButton(onPressed: () {acceptBtnEvent(this.index);} , child: Text("승인" , style: TextStyle(color: Colors.white , fontSize: FontSize.small13 , fontWeight: FontWeight.bold), ) , style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.teal)))
          ,)
      ],
    );

    return denyAndAcceptBtn;
  }

  /**
   * 썸네일 + 모임 타이틀
   */
  Widget _getThumnailAndMoimTitle() {
    Widget thumnailAndMoimTitle = Row(
      mainAxisAlignment: MainAxisAlignment.start ,
      crossAxisAlignment: CrossAxisAlignment.center ,
      children: [
        Padding(padding: EdgeInsets.only(left: 10 , right: 20) , child: _getThumnail() ,
        ) ,
        _getTitle()
      ],
    );
    return thumnailAndMoimTitle;
  }

  /**
   * parent view 에서 해당 아이템 승인 , 거절 버튼 클릭 이벤트를 알기 위해서 !
   */
  void setEventCallbackAndItemIndex(int index , Function(int) acceptEvent , Function(int) denyEvent) {
    this.index          = index;
    this.acceptBtnEvent = acceptEvent;
    this.denyBtnEvent   = denyEvent;
  }
}