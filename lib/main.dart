import 'package:app_resturant/cartpage.dart';
import 'package:app_resturant/homepage.dart';
import 'package:app_resturant/widgets/newest.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Foode',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => homepage(),
        "cartpage": ((context) => Cartpage())
      },
    );
  }
}
