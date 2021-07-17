import 'package:flutter/material.dart';
import 'package:moim/component/BaseText.dart';

class MemberScreen extends StatefulWidget {
  @override
  _MemberScreenState createState() => _MemberScreenState();
}

class _MemberScreenState extends State<MemberScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: BaseText.DefaultText("MemberScreen").createText(),
    );
  }
}
