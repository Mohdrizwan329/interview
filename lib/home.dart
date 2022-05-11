import 'package:flutter/material.dart';
import 'package:interview/cards.dart';
import 'package:interview/circle.dart';
import 'package:interview/data.dart';
import 'package:interview/profile.dart';
import 'package:interview/scroll_page.dart';
import 'package:interview/search.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,

        //  title: Text(
        //  "Welcome Home",
        //style: TextStyle(fontSize: 25),
        //   ),

        leading: Icon(
          Icons.account_circle_rounded,
          size: 35,
        ),
        title: IconButton(
          onPressed: () {},
          icon: Icon(Icons.location_on),
        ),
        // ignore: prefer_const_literals_to_create_immutables

        //------- Notification --------//
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Search()));
              },
              icon: Icon(Icons.search)),
          IconButton(
              onPressed: () {
                /*Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ThreeDorts()));*/
              },
              icon: Icon(
                Icons.more_vert,
                size: 35,
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              color: Colors.grey,
            ),
            //---- background container -------//
            Container(
              color: Colors.white,
            ),
            //------- Scroll Page ---------//
            Container(
              child: Scaroll(),
            ),
            //------ Title --------//
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 400,
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Text(
                      "Hi Foodie, what's your pick?",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
            //------- Circle Image -----//
            //Cards(),
            Circle(),

            //------Title ------//
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                alignment: Alignment.centerLeft,
                height: 620,
                child: Text(
                  "Highly Recommended",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ),

            //------- Scroll Card ------//
            Car(),
          ],
        ),
      ),
      //------- Bottom navigation bar --------//
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
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Home()));
              },
              icon: Icon(
                Icons.shopping_bag,
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
