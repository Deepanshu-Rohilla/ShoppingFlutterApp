import 'package:flutter/material.dart';

class MyProfile extends StatefulWidget {
  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Profile"),
        centerTitle: false,
      ),
      body: new Center(
        child: new Text("My Profile",
          style: new TextStyle(fontSize: 25.0),),
      ),

    );
  }
}
