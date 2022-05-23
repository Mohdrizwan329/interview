import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class KitchenDistrict extends StatefulWidget {
  @override
  State<KitchenDistrict> createState() => _KitchenDistrictState();
}

class _KitchenDistrictState extends State<KitchenDistrict> {
  var Url =
      'https://www.zomato.com/ncr/kitchen-district-hyatt-centric-1-janakpuri-new-delhi';
  var data;
  @override
  void initState() {
    super.initState();
    getKitchen();
  }

  getKitchen() async {
    var res = await http.get(Uri.parse(Url));
    data = jsonDecode(res.body);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Kitchen District - Hyatt Centric"),
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
