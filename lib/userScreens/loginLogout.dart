import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoppingapp/tools/app_tools.dart';

class MyLogin extends StatefulWidget {
  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: new AppBar(
        title: new Text("Login"),
        centerTitle: false,
      ),
      body: new SingleChildScrollView(
        child: new Column(
          children: <Widget>[
            appTextField()
          ],
        ),
      )
    );
  }
}
