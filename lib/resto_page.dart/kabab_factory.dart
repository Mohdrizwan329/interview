import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class KababFactory extends StatefulWidget {
  @override
  State<KababFactory> createState() => _KababFactoryState();
}

class _KababFactoryState extends State<KababFactory> {
  var Url =
      'https://www.zomato.com/ncr/the-great-kabab-factory-radisson-blu-marina-connaught-place-new-delhi';
  var data;
  @override
  void initState() {
    super.initState();
    getKababFactory();
  }

  getKababFactory() async {
    var res = await http.get(Uri.parse(Url));
    data = jsonDecode(res.body);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(" Kabab Factory"),
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
