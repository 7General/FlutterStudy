import 'package:flutter/material.dart';


class MainViewController extends StatefulWidget {
  
  createState() => MainViewState();
}

class MainViewState extends State<MainViewController> {

 final List<String> dataSource = ["UILabel","UIButton","UITextFiled","UITableView","UIWebView"];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text("首页"),
      ),
      body: ListView.builder(
        itemCount: dataSource.length,
        itemBuilder: (BuildContext context,int index){
          return GestureDetector(
            onTap: (){
              print("=====点击的行 $index");
              if (index == 0) {
                Navigator.of(context).pushNamed('/label');
              }
              if (1 == index) {
                Navigator.of(context).pushNamed('/button');
              }
            },
            child: new Container(
              color: const Color(0xFF0099ff),
              padding: EdgeInsets.all(15.0),
              child: new Row(
                children: <Widget>[
                  new Text(
                    dataSource[index],
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}