import 'package:flutter/material.dart';


class BaseText extends Text {
  FontSize fontSize = FontSize.small13;
  TextStyle textStyle = TextStyle(fontSize: FontSize.small13.getFontSize() ,color: Colors.black );
  TextAlign align = TextAlign.left;

  BaseText(String data , {this.fontSize , this.textStyle , this.align }) : super(data , style: TextStyle(fontSize: fontSize != FontSize.small13 ? fontSize.getFontSize() :  FontSize.small13.getFontSize() ,color: Colors.black ) , textAlign: align , );

}

enum FontSize {
  small10   ,
  small13   ,
  small15   ,
  medium17  ,
  medium19  ,
  medium21  ,
  large23   ,
  large25
}
extension GetFontSize on FontSize {
  double getFontSize() {
    switch(this) {
      case FontSize.small10:
        return 10;
      case FontSize.small13:
        return 13;
      case FontSize.small15:
        return 15;
      case FontSize.medium17:
        return 17;
      case FontSize.medium19:
        return 19;
      case FontSize.medium21:
        return 21;
      case FontSize.large23:
        return 23;
      case FontSize.large25:
        return 25;
    }
  }
}