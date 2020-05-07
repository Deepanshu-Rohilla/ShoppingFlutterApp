import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'cart.dart';

class ItemDetail extends StatefulWidget {

  String itemName;
  String itemImage;
  String itemSubName;
  double itemPrice;
  double itemRating;

  ItemDetail({
      this.itemName,
      this.itemImage,
      this.itemRating,
      this.itemPrice,
      this.itemSubName
  });
  @override
  _ItemDetailState createState() => _ItemDetailState();
}

class _ItemDetailState extends State<ItemDetail> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: new AppBar(
          title: new Text("Item Details"),
        centerTitle: false,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: new Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          new Container(
            height: 300.0,
            decoration: new BoxDecoration(
               image:  new DecorationImage(image: new NetworkImage(widget.itemImage),
               fit: BoxFit.fitHeight),
            borderRadius: new BorderRadius.only(
              bottomRight: new Radius.circular(120.0),
              bottomLeft: new Radius.circular(120.0)
            )),
          ),
          new Container(
            height: 300.0,
            decoration: new BoxDecoration(
               color: Colors.grey.withAlpha(50),
            borderRadius: new BorderRadius.only(
              bottomRight: new Radius.circular(120.0),
              bottomLeft: new Radius.circular(120.0)
            )),
          ),
          new SingleChildScrollView(
            child: new Column(
              children: <Widget>[

              ],
            ),
          )
        ],
      ),
      floatingActionButton: new Stack(
        alignment: Alignment.topLeft,
        children: <Widget>[
          new FloatingActionButton(
            onPressed: () {
              Navigator.of(context).push(new CupertinoPageRoute(
                  builder: (BuildContext context) => new MyCart()));
            },
            child: new Icon(Icons.shopping_cart),
          ),
          new CircleAvatar(
            radius: 10.0,
            backgroundColor: Colors.red,
            child: new Text(
              '0',
              style: new TextStyle(color: Colors.white, fontSize: 12.0),
            ),
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: new BottomAppBar(

      ),
    );
  }
}
