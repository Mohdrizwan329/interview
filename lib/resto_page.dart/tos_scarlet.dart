import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class TosScarlet extends StatefulWidget {
  @override
  State<TosScarlet> createState() => _TosScarletState();
}

class _TosScarletState extends State<TosScarlet> {
  var Url =
      'https://www.zomato.com/ncr/tos-take-off-scarlet-punjabi-bagh-new-delhi';
  var data;
  @override
  void initState() {
    super.initState();
    getTos();
  }

  getTos() async {
    var res = await http.get(Uri.parse(Url));
    data = jsonDecode(res.body);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TOS - Take Off Scarlet"),
      ),
      body: data != null
          ? ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(data[index]["title"]),
                  //subtitle: Text("ID:${data[index]["id"]}"),
                  leading: Image.network(data[index]["Url"]),
                );
              },
              itemCount: data.length)
          : Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
