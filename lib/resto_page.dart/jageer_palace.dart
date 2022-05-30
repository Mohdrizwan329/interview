import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class JageerPalace extends StatefulWidget {
  @override
  State<JageerPalace> createState() => _JageerPalaceState();
}

class _JageerPalaceState extends State<JageerPalace> {
  var Url =
      'https://www.zomato.com/ncr/hotel-jageer-palace-rajouri-garden-new-delhi';
  var data;
  @override
  void initState() {
    super.initState();
    getHotelJageer();
  }

  getHotelJageer() async {
    var res = await http.get(Uri.parse(Url));
    data = jsonDecode(res.body);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hotel Jageer Palace"),
      ),
      body: data != null
          ? ListView.builder(
              itemBuilder: (context, index) {
                return ListTile();
              },
              itemCount: data.length)
          : Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
