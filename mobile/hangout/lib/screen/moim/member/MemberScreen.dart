import 'dart:developer';
import 'dart:math';

import 'package:adaptive_action_sheet/adaptive_action_sheet.dart';
import 'package:flutter/material.dart';
import 'package:hangout/common/listItem/MemberItem.dart';
import 'package:hangout/common/popup/PopupManager.dart';
import 'package:hangout/model/auth/User.dart';
import 'package:hangout/model/member/Member.dart';
import 'package:hangout/screen/moim/member/MemberInvitationScreen.dart';
import 'package:hangout/service/member/MemberService.dart';
import 'package:hangout/util/FontSize.dart';

class MemberScreen extends StatefulWidget {
  @override
  _MemberScreenState createState() => _MemberScreenState();
}

class _MemberScreenState extends State<MemberScreen> {
  List<Member> memberList         = MemberService.memberService.getMemberListByMoim(1);//.map<Widget> ((memberItem) => MemberItem(memberItem).getMemberItemView()).toList();
  List<MemberItem> memberItemList = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      memberItemList = memberList.map<MemberItem>((member) {
        return MemberItem(member);
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    //ember member = new Member.init(MemberRole.booker, User(seq: 1 , id: "id_test" , pw: "1234" , name: "임주영" , tel: "010-9021-7325" , birth: "1995-10-29" , moimSeqs: []));
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView.builder(itemCount: memberList.length,  scrollDirection: Axis.vertical , padding: EdgeInsets.only(bottom: 15) , itemBuilder: (context , index) {
        MemberItem memberItem = memberItemList[index];
        memberItem.index = index;
        memberItem.clickedDetailBtn = (index) => {
          showOptionList(index)
        };
        return MemberItem.createMemberItemWidgets(memberItemList)[index];
      }),
      floatingActionButton: getFloatingBtn(),
    );
  }

  void showOptionList(int index) {
   var dialog =  AlertDialog(title: Text("타이틀"), content: Column(
      children: [Text("data") , Text("data2")],
    ),);
   Widget contentView = Container( child: Column(children: [Text("data") , Text("data") , Text("data") , Text("data")]),);
   List<Widget> btns = [TextButton(onPressed: () {} , child: Text("button 1")) , TextButton(onPressed: () {} , child: Text("button 2"))];

   showDialog(context: context, builder: (context) =>
      PopupManager.getAlert("title", contentView, btns)
   );
    
/*      showAdaptiveActionSheet(
        context: context ,
        title: Text("옵션") ,
        barrierColor: Colors.black12,
        bottomSheetColor: Colors.white,
        actions: <BottomSheetAction> [
          BottomSheetAction(title: Text("전화하기" , style: TextStyle(fontSize: FontSize.small13),), onPressed: (){}) ,
          BottomSheetAction(title: Text("쪽지 보내기" , style: TextStyle(fontSize: FontSize.small13),), onPressed: () {})
        ],
        cancelAction: CancelAction(title: Text("취소" , style: TextStyle(color: Colors.deepOrangeAccent , fontSize: FontSize.mid15),))
      );*/
  }

  Widget getFloatingBtn() {
    Widget floatingBtn = FloatingActionButton(onPressed: clickedMemberInvitationBtn , child: Icon(Icons.add), backgroundColor: Colors.deepOrangeAccent,);
    return floatingBtn;
  }

  void clickedMemberInvitationBtn() {
    Navigator.push(context, MaterialPageRoute(builder: (context) =>
        MemberInvitationScreen()
    ));
  }
}
