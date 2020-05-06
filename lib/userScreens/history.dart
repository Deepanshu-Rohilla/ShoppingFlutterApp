import 'package:flutter/material.dart';

class MyHistory extends StatefulWidget {
  @override
  _MyHistoryState createState() => _MyHistoryState();
}

class _MyHistoryState extends State<MyHistory> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Order History"),
        centerTitle: false,
      ),
      body: new Center(
        child: new Text("My History",
        style: new TextStyle(fontSize: 25.0),),
      ),

    );
  }
}
