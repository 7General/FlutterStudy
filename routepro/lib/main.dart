
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
      home: RouteProSample( ),
      routes: <String, WidgetBuilder> {
        '/a': (BuildContext context) => new MyPage(title: 'A 页面'),
        '/b': (BuildContext context) => new MyPage(title: 'B 页面'),
        '/c': (BuildContext context) => new WebViewPage('webviewpage'),
      },
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
        title: Text('widget.title123123123'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.playlist_play),
            tooltip: 'Air it',
            onPressed: (){
              Navigator.of(context).pushNamed('/c');
              print('点击条状');
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
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
      appBar: new AppBar(
        title: new Text(title)
      ),
    );
  }
}