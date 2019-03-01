import 'package:flutter/material.dart';

class SecondPageController extends StatefulWidget {
  
  createState() => SecondPageState();
}

class SecondPageState extends State<SecondPageController> {
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("工作台"),
      ),
    );
  }
}