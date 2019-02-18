import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class WebViewPage extends StatefulWidget {
  
  final String title;

  WebViewPage(this.title);
  createState() => _WebViewPageState();
}


class _WebViewPageState extends State<WebViewPage> {
  @override
  Widget build(BuildContext context){
  

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
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
       child: Row(
         children: <Widget>[
          Icon(
            Icons.warning,
            size: 22.0,
            ),
          SizedBox(
            width: 5.0,
          ),
          Text('模拟器'),
        ],
       )
     ),
     
    );
  }
}