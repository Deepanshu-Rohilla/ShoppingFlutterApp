import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'favourites.dart';
import 'messages.dart';
import 'cart.dart';
import 'notifications.dart';
import 'history.dart';
import 'profile.dart';
import 'delivery.dart';
import 'about.dart';
import 'loginLogout.dart';
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  BuildContext context;
  @override
  Widget build(BuildContext context) {
    this.context = context;
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Random"),
        centerTitle: true,
        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.favorite),
              color: Colors.white,
              onPressed: (){
                Navigator.of(context).push(new CupertinoPageRoute(
                    builder: (BuildContext context)  =>
                    new MyFavourites()));
              }),
          new Stack(
            alignment: Alignment.topLeft,
            children: <Widget>[
              new IconButton(
                  icon: new Icon(Icons.chat),
                  color: Colors.white,
                  onPressed: (){
                    Navigator.of(context).push(new CupertinoPageRoute(
                        builder: (BuildContext context)  =>
                        new MyMessages()));
                  }),
              new CircleAvatar(
                radius: 8.0,
                backgroundColor: Colors.red,
                child: new Text(
                  '0',
                  style: new TextStyle(color: Colors.white, fontSize: 12.0),
                ),
              )
            ],
          )
        ],
      ),
      body: new Center(
        child: new Text(
          'My Home Page',
          style: new TextStyle(fontSize: 20.0),
        ),
      ),
      floatingActionButton: new Stack(
        alignment: Alignment.topLeft,
        children: <Widget>[
          new FloatingActionButton(
            onPressed: (){
              Navigator.of(context).push(new CupertinoPageRoute(
                  builder: (BuildContext context)  =>
                  new MyCart()));
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
      drawer: new Drawer(
        child: new Column(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("Random USer"),
              accountEmail: new Text("abc@gmail.com"),
              currentAccountPicture: new CircleAvatar(
                backgroundColor: Colors.white,
                child: new Icon(Icons.person),
              ),
            ),
            new ListTile(
              leading: new CircleAvatar(
                child: new Icon(Icons.notifications,
                color: Colors.white,
                size: 20.0,),
              ),
              title: new Text("Order Notifs"),
              onTap: (){
                Navigator.of(context).push(new CupertinoPageRoute(
                    builder: (BuildContext context)  =>
                    new MyNotifications()));
              },
            ),
            new ListTile(
              leading: new CircleAvatar(
                child: new Icon(Icons.history,
                color: Colors.white,
                size: 20.0,),
              ),
              title: new Text("Order History"),
              onTap: (){
                Navigator.of(context).push(new CupertinoPageRoute(
                    builder: (BuildContext context)  =>
                    new MyHistory()));
              },
            ),
            new Divider(),
            new ListTile(
              leading: new CircleAvatar(
                child: new Icon(Icons.person,
                color: Colors.white,
                size: 20.0,),
              ),
              title: new Text("Profile Settings"),
              onTap: (){
                Navigator.of(context).push(new CupertinoPageRoute(
                    builder: (BuildContext context)  =>
                    new MyProfile()));
              },
            ),
            new ListTile(
              leading: new CircleAvatar(
                child: new Icon(Icons.home,
                color: Colors.white,
                size: 20.0,),
              ),
              title: new Text("Delivery Address"),
              onTap: (){
                Navigator.of(context).push(new CupertinoPageRoute(
                    builder: (BuildContext context)  =>
                    new MyDelivery()));
              },
            ),
            new Divider(),
            new ListTile(
              trailing: new CircleAvatar(
                child: new Icon(Icons.help,
                  color: Colors.white,
                  size: 20.0,),
              ),
              title: new Text("About US"),
              onTap: (){
                Navigator.of(context).push(new CupertinoPageRoute(
                    builder: (BuildContext context)  =>
                    new AboutUs()));
              },
            ),
            new ListTile(
              trailing: new CircleAvatar(
                child: new Icon(Icons.exit_to_app,
                  color: Colors.white,
                  size: 20.0,),
              ),
              title: new Text("Login"),
              onTap: (){
                Navigator.of(context).push(new CupertinoPageRoute(
                    builder: (BuildContext context)  =>
                    new MyLogin()));
              },
            ),


          ],
        ),
      ),
    );
  }
}
