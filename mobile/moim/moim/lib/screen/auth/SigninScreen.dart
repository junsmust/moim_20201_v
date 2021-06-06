import 'package:flutter/material.dart';
import 'package:moim/navigator/NavigatorManager.dart';


class SigninScreen extends StatefulWidget {
  @override
  _SigninScreen createState() => _SigninScreen();
}

class _SigninScreen extends State<SigninScreen> {
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
                    TextButton(onPressed: () {NavigatorManager.navigate(context, NavigatorType.replacement, "/auth/registerProfile");}, child: Text("move to main")) ,
                     TextButton(onPressed: () {NavigatorManager.navigate(context, NavigatorType.replacement, "/auth/signup");}, child: Text("move to signup"))

              ],
          )
),
);;
  }
}
