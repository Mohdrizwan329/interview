import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CastlesBar extends StatefulWidget {
  @override
  State<CastlesBar> createState() => _CastlesBarState();
}

class _CastlesBarState extends State<CastlesBar> {
  // var Url =
  //'https://www.zomato.com/ncr/castles-barbeque-connaught-place-new-delhi';
  var Mapdata;
  var userData;
  Future getCastle() async {
    http.Response response = await http.get(Uri.parse(
        "https://www.zomato.com/ncr/castles-barbeque-connaught-place-new-delhi"));
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
          title: Text("Castle's Barbeque"),
        ),
        body: userData != null
            ? ListView.builder(
                itemCount: Mapdata.lenght,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(userData[index]["title"]),
                    leading: Image.network(userData[index]["Url"]),
                  );
                },
                // itemCount: Mapdata.lenght
              )
            : Center(
                child: CircularProgressIndicator(),
              ));
  }
}
