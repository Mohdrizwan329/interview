import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class KababFactory extends StatefulWidget {
  @override
  State<KababFactory> createState() => _KababFactoryState();
}

class _KababFactoryState extends State<KababFactory> {
  //var Url =
  //  'https://www.zomato.com/ncr/the-great-kabab-factory-radisson-blu-marina-connaught-place-new-delhi';
  var Mapdata;
  var userData;
  Future getKabab() async {
    http.Response response = await http.get(Uri.parse(
        "https://www.zomato.com/ncr/the-great-kabab-factory-radisson-blu-marina-connaught-place-new-delhi"));
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
          title: Text(" Kabab Factory"),
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
