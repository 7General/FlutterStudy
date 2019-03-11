import 'package:flutter/material.dart';

class MineViewController extends StatefulWidget {
  MineViewController();
  createState() => MineViewState();
}

class MineViewState extends State<MineViewController> {
  List<String> dataSource = [];
  @override
  void initState() {
    super.initState();
    dataSource = ["清除缓存", '检查版本', '客服', '设置', '修改密码'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("个人中心"),
      ),
      body: ListView.builder(
        itemCount: dataSource.length,
        itemBuilder: (BuildContext context, int index) {
          if (index == 0) {
            return GestureDetector(
              onTap: (){
                print("点击了top");
              },
              child: new Container(
                color: Color.fromARGB(1, 255, 0, 0),
                padding: EdgeInsets.all(20),
                child: new Row(
                  children: <Widget>[
                    new RaisedButton(
                      child: new Text(
                        "header",
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                      onPressed: (){
                        print("on-pressed");
                      },
                    ),
                  ],
                ),
              ),
            );
          } else {
            return GestureDetector(
              onTap: () {
                String didSelectName = dataSource[index];
                print("----点击了第 $index 行---$didSelectName");
              },
              child: new Row(
                children: <Widget>[
                  new Container(
                    margin: EdgeInsets.only(left: 15.0),
                    child: Icon(
                      Icons.add,
                    ),
                  ),
                  new Container(
                    margin: EdgeInsets.all(15.0),
                    child: new Text(
                      dataSource[index],
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
