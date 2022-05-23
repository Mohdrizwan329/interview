import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class InformalBy extends StatefulWidget {
  @override
  State<InformalBy> createState() => _InformalByState();
}

class _InformalByState extends State<InformalBy> {
  var Url =
      'https://www.zomato.com/ncr/informal-by-imperfecto-janpath-new-delhi';
  var data;
  @override
  void initState() {
    super.initState();
    getInformal();
  }

  getInformal() async {
    var res = await http.get(Uri.parse(Url));
    data = jsonDecode(res.body);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Informal By Imperfecto"),
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
            ),
    );
  }
}
