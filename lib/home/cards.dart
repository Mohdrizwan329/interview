import 'package:flutter/material.dart';
import 'package:interview/resto_page.dart/castle_bar.dart';
import 'package:interview/resto_page.dart/farmer_basket.dart';
import 'package:interview/resto_page.dart/informal.dart';
import 'package:interview/resto_page.dart/jageer_palace.dart';
import 'package:interview/resto_page.dart/kabab_factory.dart';
import 'package:interview/resto_page.dart/kitchen_district.dart';
import 'package:interview/resto_page.dart/miss_nora.dart';
import 'package:interview/resto_page.dart/puratan.dart';
import 'package:interview/resto_page.dart/tos_scarlet.dart';

class Car extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1750,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Card(
            child: Container(
              height: 80,
              width: 400,
              child: Row(
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MissNora()));
                    },
                    child: Image.asset(
                      "assets/653b1fd1eab5f5220b8397cade6224f3.webp",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        '''Miss Noor''',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('''

 Rajouri Garden, West Delhi'''),
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Card(
            child: Container(
                width: 400,
                height: 80,
                child: Row(
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TosScarlet()));
                      },
                      child: Image.asset(
                        "assets/unnamed (1).jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          '''Tos - Take off Scarlet''',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text('''

 Punjabi Bagh, West Delhi'''),
                      ],
                    )
                  ],
                )),
          ),
          SizedBox(
            height: 10,
          ),
          Card(
            child: Container(
                width: 400,
                height: 80,
                child: Row(
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => KitchenDistrict()));
                      },
                      child: Image.asset(
                        "assets/dinef-1615538726.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          '''Kitchen District - Hyatt Centric
''',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text('''

 Janakpuri, New Delhi'''),
                      ],
                    )
                  ],
                )),
          ),
          SizedBox(
            height: 10,
          ),
          Card(
            child: Container(
                width: 400,
                height: 80,
                child: Row(
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PuratanFamily()));
                      },
                      child: Image.asset(
                        "assets/eazytrendz_2744_trend20200306032517.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          '''Puratan - Family Restaurent''',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text('''

Rohini, West Delhi'''),
                      ],
                    )
                  ],
                )),
          ),
          SizedBox(
            height: 10,
          ),
          Card(
            child: Container(
                width: 400,
                height: 80,
                child: Row(
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => CastlesBar())));
                      },
                      child: Image.asset(
                        "assets/eazytrendz_2936_trend20200911120002.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          '''Castle's Barbeque''',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text('''

Pacific Mall, Tagore Garden'''),
                      ],
                    )
                  ],
                )),
          ),
          SizedBox(
            height: 10,
          ),
          Card(
            child: Container(
                width: 400,
                height: 80,
                child: Row(
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => InformalBy()));
                      },
                      child: Image.asset(
                        "assets/kheer.webp",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          '''Insignia By INOX''',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text('''

Epicuria Mall, Nehru Place'''),
                      ],
                    )
                  ],
                )),
          ),
          SizedBox(
            height: 10,
          ),
          Card(
            child: Container(
                width: 400,
                height: 80,
                child: Row(
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FarmerBasket()));
                      },
                      child: Image.asset(
                        "assets/download.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          '''Farmers Basket At Pluck''',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text('''

Pullman New Delhi Aerocity-An AccorHotels 
Brand'''),
                      ],
                    )
                  ],
                )),
          ),
          SizedBox(
            height: 10,
          ),
          Card(
            child: Container(
                width: 400,
                height: 80,
                child: Row(
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => KababFactory()));
                      },
                      child: Image.asset(
                        "assets/15998244230.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          '''The Great Kabab Factory''',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text('''

Radisson Blu Plaza Delhi AirPort, Mahipalpur'''),
                      ],
                    )
                  ],
                )),
          ),
          SizedBox(
            height: 10,
          ),
          Card(
            child: Container(
                width: 400,
                height: 80,
                child: Row(
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => JageerPalace()));
                      },
                      child: Image.asset(
                        "assets/15998226771.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          '''Hotel Jageer Palace''',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text('''

Rajouri Garden, New Delhi'''),
                      ],
                    )
                  ],
                )),
          ),
          SizedBox(
            height: 10,
          ),
          Card(
            child: Container(
                width: 400,
                height: 80,
                child: Row(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Image.asset(
                        "assets/15998244241.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          '''Miss Noor''',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text('''

 Rajouri Garden, West Delhi'''),
                      ],
                    )
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
