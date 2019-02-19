import 'package:flutter/material.dart';

import 'welcome_page/index.dart';
import 'test/page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 显示欢迎页
    WelcomePage();
    return new MaterialApp(
      title: 'title',
      home: RouteProSample(),
      // routes: <String, WidgetBuilder> {
      //   '/a': (BuildContext context) => new MyPage(title: 'A 页面'),
      //   '/b': (BuildContext context) => new MyPage(title: 'B 页面'),
      //   '/c': (BuildContext context) => new WebViewPage('webviewpage'),
      // },
    );
  }
}

class RouteProSample extends StatefulWidget {
  @override
  createState() => _RouteProSampleState();
}

class _RouteProSampleState extends State<RouteProSample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('导航栏标题-button'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.playlist_play),
            onPressed: () {
              Navigator.of(context).pushNamed('/c');
              print('点击条状');
            },
          ),
        ],
      ),

      body: new Center(
        // child: new Text (
        //   '我的text',
        //   style: new TextStyle(
        //     fontSize: 20.0,
        //     color: Colors.red,
        //     fontStyle: FontStyle.italic,
        //   ),
        // ),

        child: new RaisedButton(
          child: new Text(
            "flutter-button-click",
            style: new TextStyle(
              fontSize: 20.0,
              color: Colors.red,
            ),
          ),
          onPressed: () {
            print("点击了按钮");
          },
        ),
      ),

// body: new Container(
//   color: Colors.red,
//   child: Column(
//     children: <Widget>[
//       Text(
//         '123',
//       )
//       Text(
//         '456',
//         style: new TextStyle(
//           fontSize: 20.0,
//         ),
//       )
//     ],

//   ),
//   width: 100,
//   height: 100,

//   // child: new Text(
//   //   "tezt",
//   // ),
//   // padding: const EdgeInsets.all(20.0),
// ),

      // body: Center(
      //   child: Column(
      //     // mainAxisAlignment: MainAxisAlignment.center,
      //     children: <Widget>[

      //       Text(
      //         'You have pushed the button this many times:',
      //       ),

      //       new RaisedButton(
      //         child: new Text("按钮"),
      //         color: Colors.red,
      //         onPressed: (){
      //           print('点击了按钮');
      //         },

      //         padding: EdgeInsets.only(top: 100,left: 100),
      //       ),
      //       // Padding(padding: EdgeInsets.only(left: 10.0,top: 500.0)),
      //     ],
      //   ),
      // ),
    );
  }
}

// 配置main函数
void main() async {
  runApp(new MyApp());
}

class MyPage extends StatelessWidget {
  MyPage({Key key, this.title}) : super(key: key);
  final String title;

  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text(title)),
    );
  }
}
