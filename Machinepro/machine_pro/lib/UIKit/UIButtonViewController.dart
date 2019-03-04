import 'package:flutter/material.dart';

class UIButtonViewController extends StatefulWidget {
  createState() => UIButtonViewState();
}

class UIButtonViewState extends State<UIButtonViewController> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text("UIButton"),
      ),
      body: new Center(
        child: new Column(
          children: <Widget>[
            new RaisedButton(
              child: Text(
                "这是一个button",
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.red,
                ),
              ),
              onPressed: (){
                print("button点击了一下");
              },
            ),
            
          ],
        ),
      ),
    );
  }
}
