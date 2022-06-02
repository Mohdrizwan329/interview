import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class KitchenDistrict extends StatefulWidget {
  @override
  State<KitchenDistrict> createState() => _KitchenDistrictState();
}

class _KitchenDistrictState extends State<KitchenDistrict> {
  //var Url =
  // 'https://www.zomato.com/ncr/kitchen-district-hyatt-centric-1-janakpuri-new-delhi';
  var Mapdata;
  var userData;
  Future getKitchen() async {
    http.Response response = await http.get(Uri.parse(
        "https://www.zomato.com/ncr/kitchen-district-hyatt-centric-1-janakpuri-new-delhi"));
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
          title: Text("Kitchen District - Hyatt Centric"),
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
