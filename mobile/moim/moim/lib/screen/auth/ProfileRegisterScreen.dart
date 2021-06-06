import 'package:flutter/material.dart';
import 'package:moim/navigator/NavigatorManager.dart';

class ProfileRegisterScreen extends StatefulWidget {
  @override
  _ProfileRegisterScreen createState() => _ProfileRegisterScreen();
}

class _ProfileRegisterScreen extends State<ProfileRegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center ,
            crossAxisAlignment: CrossAxisAlignment.center ,
            children: [
              Text("ProfileRegisterScreen" , style: TextStyle(color: Colors.black , fontSize: 13),),
              TextButton(onPressed: () {NavigatorManager.navigate(context, NavigatorType.replacement, "/main");}, child: Text("replace to main"))
            ],
          )
      ),
    );
  }
}
