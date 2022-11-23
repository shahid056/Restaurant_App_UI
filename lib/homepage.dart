import 'package:app_resturant/widgets/categories.dart';
import 'package:app_resturant/widgets/drawer.dart';
import 'package:app_resturant/widgets/newest.dart';
import 'package:app_resturant/widgets/popular.dart';
import 'package:app_resturant/widgets/widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        AppBarWidget(),

        //search
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: Container(
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: Offset(0, 3))
                ]),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: Row(
                children: [
                  Icon(
                    CupertinoIcons.search,
                    color: Colors.red,
                  ),
                  Container(
                    height: 50,
                    width: 250,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "What you want to eat today?",
                            border: InputBorder.none),
                      ),
                    ),
                  ),
                  Icon(Icons.filter_list),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 20, left: 10),
          child: Text(
            "Categories",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        CategoriesWidget(),

        //popular
        Padding(
          padding: EdgeInsets.only(
            top: 20,
            left: 10,
          ),
          child: Text(
            'Popular',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        popularWidget(),

        Padding(
          padding: EdgeInsets.only(
            top: 20,
            left: 10,
          ),
          child: Text(
            'Newest',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
       newestWidget(),
      ]),
      drawer: DrawerWedget(),
      floatingActionButton: Container(
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(20), boxShadow: [
          BoxShadow(
              color: Colors.grey,
              spreadRadius: 2,
              blurRadius: 10,
              offset: Offset(0, 3))
        ]),
        child: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, "cartpage");
          },
          child: Icon(
            CupertinoIcons.cart,
            size: 28,
            color: Colors.red,
          ),
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}
