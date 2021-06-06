import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
//import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:hangout/common/base/BaseAppBar.dart';
import 'package:hangout/common/base/BaseScreen.dart';
import 'package:hangout/common/base/BaseText.dart';
import 'package:hangout/common/extension/ColorExtension.dart';
import 'package:hangout/model/auth/User.dart';
import 'package:hangout/screen/auth/ProfileRegisterationScreen.dart';
import 'package:hangout/util/FontSize.dart';
import 'package:hangout/util/SizeCollector.dart';

class SignupScreen extends StatefulWidget {

  @override
  _State createState() => _State();
}

class _State extends State<SignupScreen> {
  String birthValue = "생년월일을 선택해주세요";
  var dateUtil = DateTime.now();
  User _user = User();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          color: Colors.white,
          padding: EdgeInsets.fromLTRB(SizeCollector.leftAndRightMargin.getSize(), SizeCollector.topMargin.getSize(), SizeCollector.leftAndRightMargin.getSize(), SizeCollector.bottomMargin.getSize()),
          child:
          SafeArea( child:
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BaseAppBar(title: "회원가입" , leftIcon: Icon(Icons.keyboard_arrow_left) , rightIcon: null) ,
                getIdAndConfirmBtn() ,
                _getTitleAndTextField("비밀번호" , "비밀번호 입력해주세요" , TextInputType.emailAddress , true) ,
                _getTitleAndTextField("비밀번호 확인" , "비밀번호 다시 입력해주세요" , TextInputType.emailAddress , true) ,
                _getTitleAndTextField("이름 ", "이름 입력해주세요" , TextInputType.emailAddress , false) ,
                _getTelInput() ,
                getBirthInput(context) ,
                _getButton("다음",Colors.white , Colors.black, (){transiteToSignupScreen();}) ,
              ],
            ),
          ),
          ),
        ));
    }
  /**
   * 타이틀 + 텍스트 필드 위젯
   */
  Widget _getTitleAndTextField(String title , String hint , TextInputType inputType , bool isSecurity) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Text(title , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 14), textAlign: TextAlign.start ) ,
        BaseText( title,  TextAlign.start, Colors.black,  FontSize.mid15 , null) ,
        TextField(
          decoration: InputDecoration(
            hintText: hint ,
          ),
          keyboardType: inputType,
          maxLines: 1,
          obscureText: isSecurity,
        ) ,
        Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, SizeCollector.bottomMargin.getSize()),)
      ],
    );
  }

  Widget _getTitleAndWidget(String title , Widget widget) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Text(title , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 14), textAlign: TextAlign.start ) ,
        BaseText( title, TextAlign.start,  Colors.black,  FontSize.mid15 , null) ,
        widget ,
        Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, SizeCollector.bottomMargin.getSize()),)
      ],
    );
  }

  Widget _getButton(String title , Color titleColor , Color color , VoidCallback onPressed) {
    return SizedBox(
      width: double.infinity,
      child: RaisedButton(onPressed: onPressed ,
        color: color ,
        child: Text(title , style: TextStyle(color: titleColor),),
      ),
    );
  }

  void _onPressedNextBtn(BuildContext context) {
    //Navigator.push(context, route)
    //pushToScreen(context, ProfileRegisterationScreen());

  }

  Widget getIdAndConfirmBtn() {

    Widget idInput = TextField(
      decoration: InputDecoration(
        hintText: "아이디를 입력해주세요 " ,
      ),
      keyboardType: TextInputType.text,
      maxLines: 1,
    );

    Widget confirmBtn = ElevatedButton(onPressed: () {} ,style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF3F5CF9)) ),
        child: BaseText("중복확인" , TextAlign.center, Colors.white , FontSize.small11,null));

    Widget idInputAndConfirmBtn = Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(child: idInput , flex: 7,) ,
        Expanded(child: confirmBtn , flex: 3,)
      ],
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Text(title , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 14), textAlign: TextAlign.start ) ,
       // BaseText(data: "아이디 ",  TextAlign.start, Colors.black, FontSize.mid15, null) ,
        BaseText( "아이디", TextAlign.start ,  Colors.black ,  FontSize.mid15, null) ,
        idInputAndConfirmBtn ,
        Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, SizeCollector.bottomMargin.getSize()),)
      ],
    );
  }

  Widget _getTelInput() {
    Widget tel1 = TextField(
      decoration: InputDecoration(
        hintText: "010" ,
      ),
      keyboardType: TextInputType.number,
      maxLines: 1,
    );
    Widget tel2 = TextField(
      decoration: InputDecoration(
        hintText: "1234" ,
      ),
      keyboardType: TextInputType.number,
      maxLines: 1,
    );
    Widget tel3 = TextField(
      decoration: InputDecoration(
        hintText: "5678" ,
      ),
      keyboardType: TextInputType.number,
      maxLines: 1,
    );

    Widget telInputWidget = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(width: 100 , child: tel1,),
        Container(width: 100 , child: tel2,),
        Container(width: 100 , child: tel3,),
      ],
    );

    return _getTitleAndWidget("전화번호", telInputWidget);
  }

  Widget getBirthInput(BuildContext context) {
    Widget birthBtn = TextButton(
        onPressed: () {
          DatePicker.showDatePicker(context,
              showTitleActions: true,
              minTime: DateTime(1930, 1, 1),
              maxTime: DateTime(dateUtil.year, dateUtil.month, dateUtil.day), onChanged: (date) {
                print('change $date');
              }, onConfirm: (date) {
                print('confirm $date');
                setState(() {
                  birthValue = '생년월일 : ${date.year.toString()}년 ${date.month.toString()}월 ${date.day.toString()}일';
                  _user.birth = '${date.year.toString()}-${date.month.toString()}-${date.day.toString()}';

                  log("birth : ${birthValue}  ${_user.birth}");
                });
              }, currentTime: DateTime.now(), locale: LocaleType.ko);
        },
        child: Text(
          birthValue,
          style: TextStyle(color: Colors.black),
          //style: TextStyle(color: Colors.blue),
        )
    );

    return Column(
      children: [
        birthBtn ,

      ],
    ); //_getTitleAndWidget("생년월", birthBtn);
  }
  void transiteToSignupScreen() {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ProfileRegisterationScreen()));
  }

}

