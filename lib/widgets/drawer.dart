import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DrawerWedget extends StatefulWidget {
  const DrawerWedget({super.key});

  @override
  State<DrawerWedget> createState() => _DrawerWedgetState();
}

class _DrawerWedgetState extends State<DrawerWedget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: [
        DrawerHeader(
          padding: EdgeInsets.zero,
          child: UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.red),
            accountName: Text(
              "sam",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            accountEmail: Text('sam@12gamil.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assest/chpic.jpg'),
            ),
          ),
        ),
        ListTile(
          leading: Icon(
            CupertinoIcons.home,
            color: Colors.red,
          ),
          title: Text(
            "Home",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: Icon(
            CupertinoIcons.person,
            color: Colors.red,
          ),
          title: Text(
            "My Account",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: Icon(
            CupertinoIcons.cart,
            color: Colors.red,
          ),
          title: Text(
            "Order",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: Icon(
            CupertinoIcons.heart,
            color: Colors.red,
          ),
          title: Text(
            "My Wish List",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: Icon(
            CupertinoIcons.settings,
            color: Colors.red,
          ),
          title: Text(
            "Seeting",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: Icon(
            Icons.logout,
            color: Colors.red,
          ),
          title: Text(
            "Logout",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        )
      ],
    ));
  }
}
