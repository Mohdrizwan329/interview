// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:interview/home.dart';
import 'dart:convert';

import 'package:interview/profile.dart';

// ignore: use_key_in_widget_constructors
class Data extends StatefulWidget {
  @override
  State<Data> createState() => _DataState();
}

class _DataState extends State<Data> {
  var url = "https://jsonplaceholder.typicode.com/photos";
  // ignore: prefer_typing_uninitialized_variables
  var data;
  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    var res = await http.get(Uri.parse(url));
    data = jsonDecode(res.body);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore:
        title: Text("Data"),
      ),
      body: data != null
          ? ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(data[index]["title"]),
                  subtitle: Text("ID:${data[index]["id"]}"),
                  leading: Image.network(data[index]["url"]),
                );
              },
              itemCount: data.length)
          : Center(
              child: CircularProgressIndicator(),
            ),
      bottomNavigationBar: Container(
        color: Colors.blue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Home()));
              },
              icon: Icon(
                Icons.home,
                semanticLabel: "Home",
                size: 40,
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Data()));
              },
              icon: Icon(
                Icons.data_usage,
                semanticLabel: "Home",
                size: 40,
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Profile()));
              },
              icon: Icon(
                Icons.person,
                semanticLabel: "Home",
                size: 40,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
