import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class PuratanFamily extends StatefulWidget {
  @override
  State<PuratanFamily> createState() => _PuratanFamilyState();
}

class _PuratanFamilyState extends State<PuratanFamily> {
  //var Url =
  //  'https://www.zomato.com/ncr/puratan-family-restaurant-bar-rohini-delhi';

  var Mapdata;
  var userData;
  Future getPuratan() async {
    http.Response response = await http.get(Uri.parse(
        "https://www.zomato.com/ncr/puratan-family-restaurant-bar-rohini-delhi"));
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
          title: Text("Puratan - Family Restaurant"),
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
              ));
  }
}
