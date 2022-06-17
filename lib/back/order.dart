import 'package:flutter/material.dart';

class Order extends StatefulWidget {
  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Order Product"), centerTitle: true,
        backgroundColor: Colors.grey.shade400,
        automaticallyImplyLeading: false, // remove back botton
        toolbarHeight: 100, //bar height
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
              child: Text(
            "Not order product",
            style: TextStyle(fontSize: 16),
          ))
        ],
      ),
    );
  }
}
