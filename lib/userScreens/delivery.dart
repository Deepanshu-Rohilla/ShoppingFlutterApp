import 'package:flutter/material.dart';

class MyDelivery extends StatefulWidget {
  @override
  _MyDeliveryState createState() => _MyDeliveryState();
}

class _MyDeliveryState extends State<MyDelivery> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Delivery"),
        centerTitle: false,
      ),
      body: new Center(
        child: new Text("My Address",
          style: new TextStyle(fontSize: 25.0),),
      ),

    );
  }
}

