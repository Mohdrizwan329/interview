import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class FarmerBasket extends StatefulWidget {
  @override
  State<FarmerBasket> createState() => _FarmerBasketState();
}

class _FarmerBasketState extends State<FarmerBasket> {
  var Url =
      'https://www.zomato.com/ncr/farmers-basket-at-pluck-aerocity-new-delhi';
  var data;
  @override
  void initState() {
    super.initState();
    getFarmers();
  }

  getFarmers() async {
    var res = await http.get(Uri.parse(Url));
    data = jsonDecode(res.body);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Farmer's Basket At Pluck"),
      ),
      body: data != null
          ? ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(data[index]["title"]),
                  leading: Image.network(data[index]["Url"]),
                );
              },
              itemCount: data.length)
          : Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
