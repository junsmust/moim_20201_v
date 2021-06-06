import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hangout/common/base/BaseAppBar.dart';
import 'package:hangout/common/extension/ColorExtension.dart';
import 'package:image_picker/image_picker.dart';

class ProfileRegisterationScreen extends StatefulWidget {
  @override
  _ProfileRegisterationScreenState createState() => _ProfileRegisterationScreenState();
}

class _ProfileRegisterationScreenState extends State<ProfileRegisterationScreen> {
  final ImagePicker _imagePicker = ImagePicker();
  PickedFile _selectedFile = null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _createBody(),
    );
  }

  Widget _createBody() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
         SafeArea(child: BaseAppBar(title: "프로필 등록" , leftIcon: Icon(Icons.keyboard_arrow_left),)),
          Expanded(child: Container(
            decoration: BoxDecoration(
                color: Colors.black,
                //borderRadius: BorderRadius.only(bottomRight: Radius.circular(50) , bottomLeft: Radius.circular(50))
                //borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30.0) , bottomRight: Radius.circular(30.0))
            ),
            child: Center(
              child: Container(
                width: 150 ,
                height: 150 ,
                decoration: BoxDecoration( color: Colors.white , borderRadius: BorderRadius.all(Radius.circular(75))) ,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: FittedBox(
                        child: _configureProfile(),
                      ),
                    ) ,
                    Positioned(child: GestureDetector(
                      onTap: _tappedOnImageSelectBtn ,
                      child: Container(
                        width: 50 ,
                        height: 50 ,
                        decoration: BoxDecoration(color: Colors.blueGrey  , borderRadius: BorderRadius.all(Radius.circular(25))),
                        child: Icon(Icons.add , color: Colors.white, ),
                      ),
                    ) , bottom: 0 , right: 0, width: 40 , height: 40 )
                  ],
                ),
              ),
              ),
            ),
            flex: 3, ) ,
          Expanded(child: SizedBox(
            child: Container(
              color: Colors.black,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(padding: EdgeInsets.only(bottom: 30) ,child: SizedBox(
                    height: 40 ,
                    width: 200 ,
                    child: ElevatedButton(
                      onPressed: () {} ,
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.deepPurple)
                      ),
                      child: Text("다음에 등록하기" , style: TextStyle(color: Colors.white),),
                    ),
                  ),) ,
                ],
              ),
            ),
            height: double.infinity,
            width: double.infinity,
          ) , flex: 4,)
        ],
      ),
    );
  }
  void _tappedOnImageSelectBtn() {
    _showAlbum();
  }

  Future _showAlbum() async {
    PickedFile image = await _imagePicker.getImage(source: ImageSource.gallery , maxHeight: 100.0 , maxWidth: 100.0 );
    setState(() {
      _selectedFile = image;
    });
  }

  Widget _configureProfile() {
    if (this._selectedFile != null) {
      File file = File(_selectedFile.path);
      Widget selectedImage = Image.file(file);
      return selectedImage;
    }
    else {
      Widget defaultIcon = Icon(Icons.person , color: Colors.blueGrey);
      return defaultIcon;
    }
  }
}
