import 'package:flutter/material.dart';

class BaseAppBar extends StatelessWidget {
  Icon leftIcon = null;
  Icon rightIcon = null;
  String title;
  Color bgColor = Colors.white;
  Color titleColor = Colors.black;

  BaseAppBar({this.title , this.leftIcon , this.rightIcon , this.bgColor , this.titleColor} );

  @override
  Widget build(BuildContext context) {
    Widget content = Container(
      height: 60,
      width: double.infinity ,
      color: this.bgColor,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                this.leftIcon != null ? Icon(Icons.keyboard_arrow_left) : Container()
              ]) ,
          Expanded(child: Text(title , textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold , fontSize: 17 ,color: this.titleColor)) , flex: 9,)
          ,
          Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                rightIcon != null ? rightIcon : Container()
              ]) ,
        ],
      ),
    );
    return content;//Padding(padding: EdgeInsets.only(left: 20 , right: 20) , child: content,);
  }
}
