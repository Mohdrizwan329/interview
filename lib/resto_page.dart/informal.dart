import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class InformalBy extends StatefulWidget {
  @override
  State<InformalBy> createState() => _InformalByState();
}

class _InformalByState extends State<InformalBy> {
  //var Url =
  //  'https://www.zomato.com/ncr/informal-by-imperfecto-janpath-new-delhi';
  var Mapdata;
  var userData;

  Future getInoformal() async {
    http.Response response = await http.get(Uri.parse(
        "https://www.zomato.com/ncr/informal-by-imperfecto-janpath-new-delhi"));
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
        title: Text("Informal By Imperfecto"),
      ),
      body: userData != null
          ? ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(userData[index]["title"]),
                  leading: Image.network(userData[index]["Url"]),
                );
              },
              itemCount: Mapdata.lenght)
          : Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
