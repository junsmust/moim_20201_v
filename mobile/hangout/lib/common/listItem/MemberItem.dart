import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hangout/model/member/Member.dart';

class MemberItem {
 Member member;
 Function(int) _clickedDetailBtn;
 int _index;

  MemberItem(this.member);

 set clickedDetailBtn(Function value) {
    _clickedDetailBtn = value;
  }
 set index(int value) {
   _index = value;
 }
  Widget getMemberItemView() {

    Widget container = Container(
      height: 90 ,
      width: double.infinity ,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(bottom: BorderSide(color: Colors.black12))
        //border: Border(bottom: BorderSide(color: Colors.black12 , width: double.infinity , style: BorderStyle.solid) , )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween ,
        crossAxisAlignment: CrossAxisAlignment.center ,
        children: [
          Padding(padding: EdgeInsets.only(left: 15) , child: _getNameAndTelInfo())
          , IconButton(icon: Icon(Icons.more_vert), onPressed: () {_clickedDetailBtn(_index);} , color: Colors.grey,)
        ],
      ),
    );
    return container;
  }
 Widget _getThumnail() {
   Widget thumnail = Container(
       width: 50 ,
       height: 50 ,
       decoration: BoxDecoration(color: Colors.black12, borderRadius: BorderRadius.all(Radius.circular(25)) ),
       child: Image.network("https://image.flaticon.com/icons/png/512/900/900783.png")
   );
   return thumnail;
 }
 Widget _getNameAndTelInfo() {
   Widget thumnail = Container(
       width: 50 ,
       height: 50 ,
       decoration: BoxDecoration(color: Colors.black12, borderRadius: BorderRadius.all(Radius.circular(25)) ),
       child: Padding(padding: EdgeInsets.all(10), child: Image.network("https://image.flaticon.com/icons/png/512/900/900783.png" , fit: BoxFit.scaleDown,),)
   );
    Widget nameAndTelInfo = Column(
      mainAxisAlignment: MainAxisAlignment.center ,
      children: [
         Container(
           width: 200,
           child: Text(member.userInfo.name+'(${member.role.getTitle()})' , textAlign: TextAlign.left , ),
         )

         , Container(
          width: 200 ,
          child:  Text(member.userInfo.tel , textAlign: TextAlign.left,)
          ,
        )
      ],
    );
    return Row(
      mainAxisAlignment: MainAxisAlignment.start ,
      crossAxisAlignment: CrossAxisAlignment.center ,
      children: [
        thumnail
        , Padding(padding: EdgeInsets.only(left: 20) , child: nameAndTelInfo,)
      ],
    );
 }
 MemberItem createMemberItem(Member member) {
   MemberItem memberItem = new MemberItem(member);
   return memberItem;

 }

 static List<Widget> createMemberItemWidgets(List<MemberItem> memberItems) {
   return memberItems.map<Widget>((memberItem) {
     return memberItem.getMemberItemView();
   }).toList();
 }
}