import 'package:flutter/material.dart';

class UITextFiledViewController extends StatefulWidget {
  createState() => UITextFiledViewState();
}

class  UITextFiledViewState  extends State<UITextFiledViewController> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold (
      appBar: new AppBar(
        title: Text("UITextFiledView"),
      ),
      body: new Center(
        child: new Column(
          children: <Widget>[
            new TextField(
              keyboardType: TextInputType.text,
              decoration:  new InputDecoration(
                labelText: "pleacrholder-",
                helperText: "helperText",
                contentPadding: const EdgeInsets.all(10.0),
                border: new OutlineInputBorder(
                  gapPadding: 10.0,
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              onSubmitted: (value) {
                  print("------文字提交 $value >------");
              },
              onEditingComplete: (){
                  print("------编辑完成 >------");
              },
              onChanged: (value) {
                  print("------输入框中的内容：$value >------");
              },
              style: new TextStyle(
                fontSize: 25.0,
                color: Colors.red,
              ),
            )
          ],
        ),
      ),
    );
  }
}