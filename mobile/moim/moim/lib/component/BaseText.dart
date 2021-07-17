import 'dart:developer';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:moim/util/CommonUsage.dart';
import 'package:moim/util/FontSize.dart';


class BaseText {
  String data;
  TextStyle textStyle;
  TextAlign align;
  VoidCallback tapCallback = null;
  bool isLong = false;

  BaseText.DefaultText(String data , {TextStyle textStyle , TextAlign align , VoidCallback tapCallback , bool isLong}) {
    this.data             = data;
    this.textStyle        = textStyle;
    this.align            = align;
    this.tapCallback      = tapCallback;
    this.isLong           = isLong;
  }

  /**
   *  텍스트 생성
   *  tapCallback null이 아닌 경우 GestureDetector 반환
   *  기본 스타일 적용
   */
  Widget createText() {

    TextStyle defaultTextStyle = TextStyle(color: Colors.black , fontSize: FontSize.small13.getFontSize() , locale: Locale('ko', 'KR') , fontStyle: FontStyle.normal ) ;
    if (CommonUsage.isNull(this.textStyle) ) {
      this.textStyle = defaultTextStyle;
    }
    Text textWidget = Text(this.data , textAlign: this.align , style: textStyle, overflow: isLong ? TextOverflow.visible : TextOverflow.ellipsis ,);

    if (!CommonUsage.isNull(this.tapCallback)) {
      GestureDetector tapGestureRecognizer = GestureDetector(
        onTap: this.tapCallback,
        child: textWidget,
      );
      return tapGestureRecognizer;
    }
    return textWidget;
  }

}


