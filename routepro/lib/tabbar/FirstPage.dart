import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  
  createState() => FirstPageState();
}

class FirstPageState extends State<FirstPage> {
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("网络"),
      ),
      body: new Center(
        child: new Column(
          children: <Widget>[
            new RaisedButton(
              child: Text(
                "我是button",
                style: TextStyle(fontSize: 20.0),
                ),
              onPressed: (){
                print("店家了");
                Navigator.of(context).pushNamed('/c');
              },
              
            ),
          ],
        ),
      ),
    );
  }
}