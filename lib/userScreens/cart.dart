import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCart extends StatefulWidget {
  @override
  _MyCartState createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Cart"),
        centerTitle: false,
      ),
      body: new Center(
        child: new Text("My Cart",
          style: new TextStyle(fontSize: 25.0) ,),

      ),
    );
  }
}
