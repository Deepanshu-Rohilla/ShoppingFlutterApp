import 'package:flutter/material.dart';

class MyFavourites extends StatefulWidget {
  @override
  _MyFavouritesState createState() => _MyFavouritesState();
}

class _MyFavouritesState extends State<MyFavourites> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("My Favourites"),
        centerTitle: false,
      ),
      body: new Center(
        child: new Text("My Favourite",
          style: new TextStyle(fontSize: 25.0),),
      ),
    );
  }
}
