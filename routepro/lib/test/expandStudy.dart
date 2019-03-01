import 'package:flutter/material.dart';

class expandLayout extends StatefulWidget {
  final String title;

  expandLayout(this.title);
  createState() => _expandLayout();
}

class _expandLayout extends State<expandLayout> {
  Widget titleSections = new Container(
    padding: const EdgeInsets.all(32.0),
    child: new Row(
      children: [
        new RaisedButton(
          onPressed: () {
            print('点击红色按钮事件');
          },
          color: const Color(0xffcc0000),
          child: new Text('红色按钮'),
        ),

        new Expanded(
          
          child: new Column(
            children: <Widget>[
              new RaisedButton(
                onPressed: () {
                  print('点击黄色按钮事件');
                },
                color: const Color(0xfff1c232),
                child: new Text('黄色按钮12223'),
              ),
            ],
          ),
        ),
        // new RaisedButton(
        //   onPressed: () {
        //     print('点击黄色按钮事件');
        //   },
        //   color: const Color(0xfff1c232),
        //   child: new Text('黄色按钮'),
        // ),
        // new Text("41"),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.playlist_play),
            tooltip: 'Air it',
            onPressed: () {
              Navigator.of(context).pushNamed('/c');
              print('点击条状');
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          // new Image.asset(
          //   'images/640.jpg',
          //   height: 240.0,
          //   fit: BoxFit.cover,
          // ),
          titleSections,
        ],
      ),
    );
  }
}
