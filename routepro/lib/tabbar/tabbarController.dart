import 'package:flutter/material.dart';
import 'package:routepro/tabbar/FirstPage.dart';
import 'package:routepro/tabbar/SecondPage.dart';
import 'package:routepro/tabbar/ThirdPage.dart';

class tabbarController extends StatefulWidget {
  final String title;

  tabbarController(this.title);
  createState() => _tabbarVC();
}

class _tabbarVC extends State<tabbarController> {
   int _currentIndex = 0;
  final List<Widget> _children = [
    FirstPage(),
    SecondPageController(),
    ThirdPageController(),
  ];
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap:(int index){
        print("onTap============$index");
        setState(() {
         _currentIndex =index;   
        });
       
      },
      items: [
        BottomNavigationBarItem(
          title: new Text("Home"),icon: new Icon(Icons.home),
        ),
        BottomNavigationBarItem(
          title: new Text("工作台"),icon: new Icon(Icons.home),
        ),
        BottomNavigationBarItem(
          title: new Text("我的"),icon: new Icon(Icons.home),
        ),
      ],
      ),
    );
  }
}
