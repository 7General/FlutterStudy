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
  final TextEditingController _userPhoneController =
      new TextEditingController();
  final TextEditingController _userPasswordController =
      new TextEditingController();

  void onTextClear() {
    setState(() {
      _userPhoneController.text = "";
      _userPasswordController.text = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('导航栏标题-登录'),
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

        // child: new RaisedButton(
        //   child: new Text(
        //     "flutter-button-click",
        //     style: new TextStyle(
        //       fontSize: 20.0,
        //       color: Colors.red,
        //     ),
        //   ),
        //   onPressed: () {
        //     print("点击了按钮");
        //   },
        // ),
        child: new Column(
          children: <Widget>[
            new Text(
              "文本数据框",
              style: new TextStyle(
                fontSize: 20.0,
              ),
            ),
            new TextField(
              controller: _userPhoneController,
              keyboardType: TextInputType.text,
              decoration: new InputDecoration(
                contentPadding: const EdgeInsets.all(10.0),
                icon: new Icon(Icons.phone),
                labelText: "输入手机号",
                helperText: "注册时填写的手机号",
                // suffixIcon: new Icon(Icons.picture_in_picture),
                // border: new OutlineInputBorder(
                //   gapPadding: 10.0,
                //   borderRadius: BorderRadius.circular(20),
                // ),
              ),
              onChanged: (String value) {
                print("手机号-----》$value]");
              },
            ),
            new TextField(
              controller: _userPasswordController,
              keyboardType: TextInputType.text,
              decoration: new InputDecoration(
                contentPadding: const EdgeInsets.all(10.0),
                icon: new Icon(Icons.nature_people),
                labelText: "输入姓名",
                helperText: "注册时填写的姓名",
                // suffixIcon: new Icon(Icons.picture_in_picture),
                // border: new OutlineInputBorder(
                //   gapPadding: 10.0,
                //   borderRadius: BorderRadius.circular(20),
                // ),
              ),
              onSubmitted: (value) {
                print("------文字提交------");
              },
              onEditingComplete: () {
                print("------编辑完成------");
              },
              onChanged: (value) {
                print("------输入框中的内容：$value >------");
              },
              style: new TextStyle(
                fontSize: 30.0,
                color: Colors.red,
              ),
            ),
            new Builder(builder: (BuildContext context) {
              return new RaisedButton(
                child: Text(
                  "debug",
                  style: new TextStyle(color: Colors.red, fontSize: 20.0),
                ),
                highlightColor: Colors.deepPurple,
                disabledColor: Colors.cyan,
                onPressed: () {
                  print("onpredds");
                  if (_userPhoneController.text.toString() == "10086" &&
                      _userPasswordController.text.toString() == "10086") {
                    Scaffold.of(context).showSnackBar(new SnackBar(content: new Text("校验通过")));
                  } else {
                    Scaffold.of(context).showSnackBar(new SnackBar(content: new Text("校验有问题")));
                    onTextClear();
                  }
                },
              );
            }),
          ],
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
