import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class FarmerBasket extends StatefulWidget {
  @override
  State<FarmerBasket> createState() => _FarmerBasketState();
}

class _FarmerBasketState extends State<FarmerBasket> {
  // var Url =
  //   'https://www.zomato.com/ncr/farmers-basket-at-pluck-aerocity-new-delhi';
  var Mapdata;
  var userData;
  Future getFarmer() async {
    http.Response response = await http.get(Uri.parse(
        "https://www.zomato.com/ncr/farmers-basket-at-pluck-aerocity-new-delhi"));
    Mapdata = jsonDecode(response.body);
    setState(() {
      userData = Mapdata['data'];
    });
    debugPrint(userData.toString());
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Farmer's Basket At Pluck"),
        backgroundColor: Colors.grey.shade400,
      ),
      body: userData != null
          ? ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(userData[index]["title"]),
                  leading: Image.network(userData[index]["Url"]),
                );
              },
              itemCount: Mapdata.length)
          : Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
