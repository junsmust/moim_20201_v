import 'package:flutter/material.dart';
import 'package:hangout/screen/auth/SignupScreen.dart';
import 'package:hangout/util/SizeCollector.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isLoginbtnClicked = true;
  Color _mainColor = Color(0xFF3F5CF9);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 30 , left: 40 , right: 40),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            getLoginView()
            //getFindUserAccount()
          ],
        ),
      )

    );
  }

  /**
   * 메인 문 텍스트
   */
  Widget getMainIcon(String title , FontWeight weight , double size) {
    Widget titleWidget =  Text(
      title , style: TextStyle(fontSize: size , fontWeight: weight),
    );
    return titleWidget;
  }

  /**
   * getLoginInputFields
   * -> 아이디 , 비밀번호 input field
   */
  Widget getLoginInputFields() {
    Widget inputs = Column(
      children: [
        TextField(
          decoration: InputDecoration(
              labelText: "아이디 " ,
              labelStyle: TextStyle(color: Colors.black) ,
              focusColor: Colors.black ,
              focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.black))
          ),
        ) ,
        TextField(
          decoration: InputDecoration(
              labelText: "비밀번호 " ,
              labelStyle: TextStyle(color: Colors.black),
              focusColor: Colors.black ,
              focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.black))
          ),
        )
      ],
    );
    return inputs;
  }

  Widget getLoginBtn() {
   Widget loginBtn = Container(
     height: 45 ,
     width: 250 ,
     child: ElevatedButton(onPressed: () {},
       child: Text("로그인 " , style: TextStyle(color: Colors.white , fontSize: 18),) ,
       style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(_mainColor) , shadowColor: MaterialStateProperty.all<Color>(_mainColor)  , shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)))),
     )
   );
   Widget findIdOrPwText = Padding(padding: EdgeInsets.all(15) , child: Text("아이디 | 바밀번호 찾기 " , textAlign: TextAlign.center,),);
   Widget signupBtn = TextButton(onPressed: transiteToSignupScreen, child: Text("회원가입" , textAlign: TextAlign.right, style: TextStyle(color: Colors.black),));

   return Column(
     crossAxisAlignment: CrossAxisAlignment.stretch,
     children: [
       loginBtn ,
       Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
           findIdOrPwText ,
           signupBtn
         ],
       )
     ],
   );
  }

  Widget getFindUserAccount() {
    Widget findIdOrPwText = Padding(padding: EdgeInsets.all(15) , child: Text("아이디 | 바밀번호 찾기 "),);
    return findIdOrPwText;
  }

  Widget getLoginView() {
    Widget mainLogo = Text("Moim" , style: TextStyle(fontSize: 28 , color: Colors.black , fontWeight: FontWeight.bold));

    Widget contents = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        mainLogo ,
        Padding(padding: EdgeInsets.only(bottom: 40),) ,
        getLoginInputFields() ,
        Padding(padding: EdgeInsets.only(top: 20),) ,
        getLoginBtn() ,
      ],
    );
    return Expanded(child: contents , flex: 9);
  }
  
  void transiteToSignupScreen() {
      Navigator.push(context, MaterialPageRoute(builder: (context) => SignupScreen()));
  }

}

