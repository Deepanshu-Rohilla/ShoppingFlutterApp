import 'package:flutter/material.dart';

Widget appTextField({IconData textIcon, String textHint, bool isPassword, double sidePadding ,TextEditingController controller}){
  sidePadding ==null ? sidePadding = 0.0 : sidePadding = sidePadding;
  textHint == null ? textHint = "" : textHint = textHint;
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
            border: InputBorder.none,
          hintText: textHint,
          prefixIcon: textIcon==null ? new Container() : new Icon(textIcon)
        ),
      ),
    ),
  );
}
Widget appButton(String buttonText, double buttonPadding, Color buttonColour,){
  buttonText == null ? buttonText = "App button" : buttonText = buttonText;
  buttonPadding ==null ? buttonPadding = 0.0 : buttonPadding = buttonPadding;
  buttonColour ==null ? buttonColour = Colors.black : buttonColour = buttonColour;


  return Padding(
    padding: new EdgeInsets.all(buttonPadding),
    child: new RaisedButton(onPressed: (){},
        color: Colors.white,
        shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.all(new Radius.circular(15.0)) ),

        child: Container(
          height: 50.0,
          child: new Center(
            child: new Text(buttonText,
            style: new TextStyle(
              color: buttonColour,
              fontSize: 10.0,
            ),),
          ),
        )
    ),
  );
}

