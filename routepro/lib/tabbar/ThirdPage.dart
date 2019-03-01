import 'package:flutter/material.dart';

class ThirdPageController extends StatefulWidget {
  
  createState() => ThirdPageState();
}

class ThirdPageState extends State<ThirdPageController> {
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("个人中心"),
      ),
    );
  }
}