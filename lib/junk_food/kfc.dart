import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class KFC extends StatefulWidget {
  @override
  State<KFC> createState() => _KFCState();
}

class _KFCState extends State<KFC> {
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
        title: Text("KFC"),
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
              itemCount: Mapdata.lenght)
          : Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
