import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class MissNora extends StatefulWidget {
  @override
  State<MissNora> createState() => _MissNoraState();
}

class _MissNoraState extends State<MissNora> {
  //var Url = 'https://www.zomato.com/ncr/miss-nora-rajouri-garden-new-delhi';
  var Mapdata;
  var userData;
  Future getMiss() async {
    http.Response response = await http.get(Uri.parse(
        "https://www.zomato.com/ncr/miss-nora-rajouri-garden-new-delhi"));
    Mapdata = jsonDecode(response.body);
    setState(() {
      userData = Mapdata['data'];
    });
    debugPrint(userData.toString());
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Miss Nora"),
      ),
      body: userData != null
          ? ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(userData[index]["title"]),
                  // subtitle: Text("ID:${data[index]["id"]}"),
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
