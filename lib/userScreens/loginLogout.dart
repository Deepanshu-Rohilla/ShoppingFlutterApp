import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoppingapp/tools/app_tools.dart';

class MyLogin extends StatefulWidget {
  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();
  final scaffoldKey = new GlobalKey<ScaffoldState>();

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
              new SizedBox(
                height: 30.0,
              ),
              appTextField(
                isPassword: false,
                sidePadding: 10.0,
                textHint: "Email Address",
                textIcon: Icons.email,
                controller: email,
              ),
              new SizedBox(
                height: 30.0,
              ),
              appTextField(
                isPassword: true,
                sidePadding: 10.0,
                textHint: "Password",
                textIcon: Icons.lock,
                controller: password,
              ),
              appButton("Login", 20.0, Theme.of(context).primaryColor, on),
              new GestureDetector(
                onTap: (){

                },
                  child: new Text("New User? Sign Up here"))
            ],
          ),
        ));
  }


}
