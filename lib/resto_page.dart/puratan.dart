import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class PuratanFamily extends StatefulWidget {
  @override
  State<PuratanFamily> createState() => _PuratanFamilyState();
}

class _PuratanFamilyState extends State<PuratanFamily> {
  var Url =
      'https://www.zomato.com/ncr/puratan-family-restaurant-bar-rohini-delhi';
  var data;
  @override
  void initState() {
    super.initState();
    getPuratan();
  }

  getPuratan() async {
    var res = await http.get(Uri.parse(Url));
    data = jsonDecode(res.body);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Puratan - Family Restaurant"),
        ),
        body: data != null
            ? ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(data[index]["title"]),
                    leading: Image.network(data[index]["Url"]),
                  );
                },
                itemCount: data.length)
            : Center(
                child: CircularProgressIndicator(),
              ));
  }
}
