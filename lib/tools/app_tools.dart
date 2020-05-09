import 'package:flutter/material.dart';

Widget appTextField({Icon textIcon, String textHint, bool isPassword, double sidePadding ,TextEditingController controller}){
  return Padding(
    padding: new EdgeInsets.only(left: sidePadding),
    child: new Container(
      decoration: new BoxDecoration(
        color: Colors.white,
        borderRadius: new BorderRadius.all(new Radius.circular(15.0)),
      ),
      child: new TextField(
        controller: controller,
        obscureText: isPassword == null ? false : isPassword,
        decoration: new InputDecoration(
          hintText: textHint==null ? "" : textHint,
          prefixIcon: textIcon==null ? new Container() : new Icon(Icons.person)
        ),
      ),
    ),
  );
}