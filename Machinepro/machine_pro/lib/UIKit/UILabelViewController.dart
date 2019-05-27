import 'package:flutter/material.dart';

class UILabelViewController extends StatefulWidget {
  final String title;
  UILabelViewController(this.title);
  createState() => UILabelViewState();
}

class UILabelViewState extends State<UILabelViewController> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text("UILabel"),
      ),
      body: new Center(
        child: new Column(
          children: <Widget>[
            new Text(
              "火烈鸟也算是比较火的题材了，上次姐妹聚会朋友正好做了一些自制的牛轧糖送我们，其中一味的包装纸正是火烈鸟的图案，觉得挺好看的可以作为临摹素材就把糖纸留下了。",
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.red,
              ),
            ),
            new Container(
              margin: EdgeInsets.only(top: 100),
              
              child: new Column(
                children: <Widget>[
                  new Text(
                    "火烈鸟也算是比较火的题材了，上次姐妹聚会朋友正好做了一些自制的牛轧糖送我们，其中一味的包装纸正是火烈鸟的图案，觉得挺好看的可以作为临摹素材就把糖纸留下了。",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.red
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
