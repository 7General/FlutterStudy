import 'package:flutter/material.dart';
import 'package:machine_pro/main_menu/TabBarViewController.dart';
import 'package:machine_pro/UIKit/UILabelViewController.dart';
import 'package:machine_pro/UIKit/UIButtonViewController.dart';
import 'package:machine_pro/UIKit/UITextFiledViewController.dart';
import 'package:machine_pro/UIKit/UITableViewController.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TabBarViewController(),
      routes: <String, WidgetBuilder>{
        '/label': (BuildContext context) => new UILabelViewController("UILabel"),
        '/button': (BuildContext context) => new UIButtonViewController(),
        '/textFiled': (BuildContext context) => new UITextFiledViewController(),
        '/table': (BuildContext context) => new UITableViewController(),
      },
    );
  }
}

