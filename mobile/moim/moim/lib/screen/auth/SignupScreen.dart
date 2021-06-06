import 'package:flutter/material.dart';
import 'package:moim/navigator/NavigatorManager.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center ,
          crossAxisAlignment: CrossAxisAlignment.center ,
          children: [
            Text("SignupScreen" , style: TextStyle(color: Colors.black , fontSize: 13),),
            TextButton(onPressed: () {NavigatorManager.navigate(context, NavigatorType.replacement, "/auth/registerProfile");}, child: Text("move to register profile"))
          ],
        )
      ),
    );
  }
}
