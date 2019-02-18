// 欢迎页
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WelcomePage extends StatefulWidget {
  WelcomePage({Key key}) : super(key: key);
  @override
  createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context){
    nslogs();
    return new Container(
      color: Colors.yellow,
      child: Row(
        children: <Widget>[
          Icon(
            Icons.warning,
            size: 22.0,
            ),
          SizedBox(
            width: 5.0,
          ),
          Text('模拟器'),
        ],
      ),
    );
  }
}


void nslogs(){
  print('welcome page--------------------------------');
}