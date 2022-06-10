import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class JageerPalace extends StatefulWidget {
  @override
  State<JageerPalace> createState() => _JageerPalaceState();
}

class _JageerPalaceState extends State<JageerPalace> {
  // var Url =
  //   'https://www.zomato.com/ncr/hotel-jageer-palace-rajouri-garden-new-delhi';
  var Mapdata;
  var userData;
  Future getJageer() async {
    http.Response response = await http.get(Uri.parse(
        "https://www.zomato.com/ncr/hotel-jageer-palace-rajouri-garden-new-delhi"));
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
        title: Text("Hotel Jageer Palace"),
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
