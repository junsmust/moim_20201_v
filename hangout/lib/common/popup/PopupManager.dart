import 'package:flutter/material.dart';
import 'package:hangout/common/base/BaseText.dart';
import 'package:hangout/util/FontSize.dart';

class PopupManager {

  static Widget _createPopupView(Widget contentView , List<Widget> btns) {
    Widget contentElementWidget =  Padding(padding: EdgeInsets.only(top: 15 , bottom: 15) , child: contentView,);
    Widget popupBtnWidget       = Row(mainAxisAlignment: MainAxisAlignment.center , crossAxisAlignment: CrossAxisAlignment.end, children: btns,);

    Widget contentWidget = new Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        contentElementWidget ,
        popupBtnWidget
      ],
    );

    return contentWidget;
  }

  static AlertDialog getAlert(String title , Widget contentView , List<Widget> btns) {
    var alertDialog = AlertDialog(title: Text(title), content: _createPopupView(contentView, btns));
    return alertDialog;
  }
}