import 'package:flutter/material.dart';
import 'package:hangout/util/FontSize.dart';

class BaseText extends Text {
  BaseText(String data ,this.align , this.textColor , this.textFontSize , this.textStyle) : super(data);

  Color textColor = Colors.black;
  double textFontSize = FontSize.small13;
  TextAlign align = TextAlign.center;
  TextStyle textStyle = null;

  @override
  Widget build(BuildContext context) {
    Widget text = Text(data , textAlign: this.align , style: this.textStyle == null ? TextStyle(fontSize: this.textFontSize , color: this.textColor) : this.textStyle);
    return text;
  }
}