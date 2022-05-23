import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CastlesBar extends StatefulWidget {
  @override
  State<CastlesBar> createState() => _CastlesBarState();
}

class _CastlesBarState extends State<CastlesBar> {
  var Url =
      'https://www.zomato.com/ncr/castles-barbeque-connaught-place-new-delhi';
  var data;
  @override
  void initState() {
    super.initState();
    getCastle();
  }

  getCastle() async {
    var res = await http.get(Uri.parse(Url));
    data = jsonDecode(res.body);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Castle's Barbeque"),
        ),
        body: data != null
            ? ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(data[index]["title"]),
                    leading: Image.network(data[index]["Url"]),
                  );
                },
                itemCount: data.lenght)
            : Center(
                child: CircularProgressIndicator(),
              ));
  }
}
