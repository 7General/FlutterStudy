import 'package:flutter/material.dart';

class listViewController extends StatefulWidget {
  final String title;

  listViewController(this.title);
  createState() => _listViewController();
}

class _listViewController extends State<listViewController> {
  // _getListData() {
  //   List<Widget> widgets = [];
  //   for (int i = 0; i < 10; i++) {
  //     widgets
  //         .add(Padding(padding: EdgeInsets.all(10.0), child: Text("Row $i")));
  //   }
  //   return widgets;
  // }

  final List<int> data = [];
  @override
  void initState() {
    super.initState();
    for (var i = 0; i < 100; i++) {
      data.add(i);
    }
  }

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
      // body: new ListView.builder(
      //   itemBuilder: (BuildContext context, int index) {
      //     final int itemData = data[index];
      //     return new Row(
      //       children: <Widget>[
      //         new Container(
      //           child: new Image.network(
      //             'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=15335368'
      //                 '41326&di=682e2e7c3810ac92be325e62e173c0ea&imgtype=0&src=http%3A%2F%2Fs6.si'
      //                 'naimg.cn%2Fmw690%2F006LDoUHzy7auXEaYER25%26690',
      //             width: 100.0,
      //             height: 70.0,
      //             fit: BoxFit.cover,
      //           ),
      //           margin: EdgeInsets.all(10.0),
      //         ),
      //         new Expanded(
      //           child: new Column(
      //             children: <Widget>[
      //               new Container(
      //                 height: 70.0,
      //                 child: new Text('这是一张非常漂亮的美女图$itemData，喜欢就赶紧来欣赏吧，等着你哦'),
      //               ),
      //             ],
      //           ),
      //           // flex: 10,
      //         ),
      //         Text(
      //           "cell Text",
      //           style: TextStyle(fontSize: 20.0),
      //         ),
      //         new RaisedButton(
      //           padding: EdgeInsets.only(top: 10),
      //           onPressed: () {
      //             print("RaiseButton click");
      //           },
      //           child: new Text(
      //             "button",
      //             style: TextStyle(
      //               fontSize: 20.0,
      //             ),
      //           ),
      //         ),
      //       ],
      //     );
      //   },
      //   itemCount: data.length,
      // ),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (BuildContext context, int position) {
          return GestureDetector(
            onTap: () {
              print("row $position");
            },
            onLongPress: (){
              print("长按了");
            },
            child: new Row(
              children: <Widget>[
                new Container(
                  child: new Image.network(
                    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=15335368'
                        '41326&di=682e2e7c3810ac92be325e62e173c0ea&imgtype=0&src=http%3A%2F%2Fs6.si'
                        'naimg.cn%2Fmw690%2F006LDoUHzy7auXEaYER25%26690',
                    width: 100.0,
                    height: 70.0,
                    fit: BoxFit.cover,
                  ),
                  margin: EdgeInsets.all(10.0),
                ),
                new Expanded(
                  child: new Column(
                    children: <Widget>[
                      new Container(
                        height: 70.0,
                        child: new Text('这是一张非常漂亮的美女图$position，喜欢就赶紧来欣赏吧，等着你哦'),
                      ),
                    ],
                  ),
                  // flex: 10,
                ),
                new Text(
                  "cell Text",
                  style: TextStyle(fontSize: 20.0),
                ),
                new RaisedButton(
                  padding: EdgeInsets.only(top: 10),
                  onPressed: () {
                    print("RaiseButton click");
                  },
                  child: new Text(
                    "button",
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
