import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class TosScarlet extends StatefulWidget {
  @override
  State<TosScarlet> createState() => _TosScarletState();
}

class _TosScarletState extends State<TosScarlet> {
  //var Url =
  // 'https://www.zomato.com/ncr/tos-take-off-scarlet-punjabi-bagh-new-delhi';
  var Mapdata;
  var userData;
  Future getTos() async {
    http.Response response = await http.get(Uri.parse(
        "https://www.zomato.com/ncr/tos-take-off-scarlet-punjabi-bagh-new-delhi"));
    Mapdata = jsonDecode(response.body);
    setState(() {
      userData = Mapdata['data'];
    });
    debugPrint(userData.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TOS - Take Off Scarlet"),
      ),
      body: userData != null
          ? ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(userData[index]["title"]),
                  //subtitle: Text("ID:${data[index]["id"]}"),
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
