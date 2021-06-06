
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hangout/model/moim/Moim.dart';

class MoimListElementView {
  Moim _moim;

  MoimListElementView({Moim moim}) {
    this._moim = moim;
  }
  
  Widget getMoimElementView() {
    
    Widget moimItem = SizedBox(
      height: 150 ,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center ,
          mainAxisAlignment: MainAxisAlignment.start ,
          mainAxisSize: MainAxisSize.max ,
          children: [
            _getMoimRepresentImg() ,
          ],
        ),
      ),
    );
  }
  
  Widget _getMoimRepresentImg() {
    String defaultImageURL = "https://image.flaticon.com/icons/png/512/900/900783.png";

    Widget defaultThumnail = Image.network(defaultImageURL);

    // if (this._moim.thumnail != null) {
    //   return SizedBox(
    //     width: 100 ,
    //     height: 100 ,
    //     child: Image.network(_moim.thumnail),
    //   );
    // }
    // else {
    //
    // }
    return Container(
      width: 100 ,
      height: 100 ,
      color: Colors.blue,
    );
  }
}