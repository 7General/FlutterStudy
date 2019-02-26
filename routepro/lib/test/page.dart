import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class WebViewPage extends StatefulWidget {
  
  final String title;

  WebViewPage(this.title);
  createState() => _WebViewPageState();
}


class _WebViewPageState extends State<WebViewPage> {

_getListData() {
    List<Widget> widgets = [];
    for (int i = 0; i < 1; i++) {
      widgets
          .add(Padding(padding: EdgeInsets.all(10.0), child: Text("Row $i")));
    }
    return widgets;
  }


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
            size: 100.0,
            ),
          SizedBox(
            width: 50.0,
          ),
          Text(
            '模拟器',
            style: TextStyle(
              fontSize: 20.0,
            ),
          
            ),
          RaisedButton(
            child: Text(
              "button",
              style: TextStyle(
                fontSize: 20.0,
              ),
              
            ),
          )
         
        ],
       )
     ),
     
    );
  }
}