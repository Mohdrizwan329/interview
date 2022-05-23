import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class MissNora extends StatefulWidget {
  @override
  State<MissNora> createState() => _MissNoraState();
}

class _MissNoraState extends State<MissNora> {
  var Url = 'https://www.zomato.com/ncr/miss-nora-rajouri-garden-new-delhi';

  var data;

  @override
  void initState() {
    super.initState();
    getNora();
  }

  getNora() async {
    var res = await http.get(Uri.parse(Url));
    data = jsonDecode(res.body);
    setState(() {});
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Miss Nora"),
      ),
      body: data != null
          ? ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(data[index]["title"]),
                  // subtitle: Text("ID:${data[index]["id"]}"),
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
