import 'package:flutter/material.dart';
import 'package:machine_pro/viewcontroller/MineViewController.dart';
import 'package:machine_pro/viewcontroller/MainViewController.dart';

class TabBarViewController extends StatefulWidget {
  createState() => TabBarViewState();
}

class TabBarViewState extends State<TabBarViewController> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    MainViewController(),// home
    MineViewController(), // mine 
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index){
          setState(() {
            _currentIndex =index;
            print("--------$index");
          });
        },
        items: [
          BottomNavigationBarItem(
            title: new Text("Home"),
            icon: new Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            title: new Text("Mine"),
            icon: new Icon(Icons.music_note),
          ),
        ],
      ),
    );
  }
}
