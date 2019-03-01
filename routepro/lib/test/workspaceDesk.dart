import 'package:flutter/material.dart';

class workspaceDesk extends StatefulWidget {
  final String title;

  workspaceDesk(this.title);
  createState() => _workspace();
}

class _workspace extends State<workspaceDesk> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
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
      // bottomNavigationBar: TabBar(
      //   tabs: <Widget>[
      //     Tab(
      //       text: "1",
      //     ),
      //     Tab(
      //       text: "1",
      //     ),
      //     Tab(
      //       text: "1",
      //     ),
      //   ],
      // ),
    );
  }
}
