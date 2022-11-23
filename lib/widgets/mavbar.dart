import 'dart:convert';
import 'package:flutter/material.dart';
import "package:http/http.dart" as http;

class CartBottomNavBar extends StatefulWidget {
  const CartBottomNavBar({super.key});

  @override
  State<CartBottomNavBar> createState() => _CartBottomNavBarState();
}

class _CartBottomNavBarState extends State<CartBottomNavBar> {
  Future<dynamic> post() async {
    try {
      var response = await http.post(
        Uri.parse(""), //route
        body: jsonEncode({
          "order_id": "#021",
          "customer_name": "xyz",
          "food": "biryani",
          "status": "pending",
          "price": "180",
          "source": "zomato",
        }),
        headers: {
          "Content-Type": "application/json;charSet=UTF-8",
        },
      );
      if (response.statusCode == 200) {
        return ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('Thank you for Order!')));
      } else {
        return false;
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  "Total",
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "180",
                  style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                ),
              ],
            ),
            ElevatedButton(
                onPressed: () async {
                  post();
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red),
                    padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)))),
                child: Text("Order Now"))
          ],
        ),
      ),
    );
  }
}

class dialog extends StatelessWidget {
  final title, icon;
  dialog(this.title, this.icon);
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      child: Container(
        width: 400,
        height: 200,
        child: Column(
          children: [
            Expanded(
              child: Container(
                color: Colors.white,
                child: Icon(
                  icon,
                  size: 60,
                  color: Color(0xff00b694),
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Color(0xff26a6be),
                child: SizedBox.expand(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(children: [
                      Text(
                        title,
                        style: TextStyle(
                            color: Color.fromARGB(255, 212, 94, 85),
                            fontSize: 20,
                            fontWeight: FontWeight.normal),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text("Okay"),
                      )
                    ]),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
