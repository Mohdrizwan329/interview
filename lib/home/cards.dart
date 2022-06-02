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
      height: 2300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Card(
            child: Container(
              height: 120,
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
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Text(
                        '''

 Rajouri Garden,
  West Delhi''',
                        style: TextStyle(fontSize: 17),
                      ),
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
                height: 120,
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
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Text(
                          '''

 Punjabi Bagh, West Delhi''',
                          style: TextStyle(fontSize: 17),
                        ),
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
                height: 125,
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
                          '''Kitchen District - 
Hyatt Centric
''',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Text(
                          "Janakpuri,New Delhi",
                          style: TextStyle(fontSize: 17),
                        ),
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
                height: 127,
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
                          '''Puratan - Family 
Restaurent''',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Text(
                          '''

Rohini, West Delhi''',
                          style: TextStyle(fontSize: 17),
                        ),
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
                height: 129,
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
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Text(
                          '''

Pacific Mall, Tagore 
Garden''',
                          style: TextStyle(fontSize: 17),
                        ),
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
                height: 148,
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
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Text(
                          '''

Epicuria Mall,
Nehru Place''',
                          style: TextStyle(fontSize: 17),
                        ),
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
                height: 150,
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
                          '''Farmers Basket
At Pluck''',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Text(
                          '''

Pullman New Delhi 
Aerocity-An 
AccorHotels Brand''',
                          style: TextStyle(fontSize: 17),
                        ),
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
                height: 178,
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
                          '''The Great Kabab 
Factory''',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Text(
                          '''

Radisson Blu Plaza
 Delhi AirPort, 
 Mahipalpur''',
                          style: TextStyle(fontSize: 17),
                        ),
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
                height: 182,
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
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Text(
                          '''

Rajouri Garden,
New Delhi''',
                          style: TextStyle(fontSize: 17),
                        ),
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
                height: 185,
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
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Text(
                          '''

Rajouri Garden, 
West Delhi''',
                          style: TextStyle(fontSize: 17),
                        ),
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
