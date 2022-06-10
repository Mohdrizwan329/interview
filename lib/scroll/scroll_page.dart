import 'package:flutter/material.dart';

class Scaroll extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5.0),
      height: 180,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {},
              /* height: 200,
              width: 340,
              decoration: BoxDecoration(
                color: Colors.blue.shade900,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),*/
              child: Image.asset(
                "assets/content9442.jpg",
                fit: BoxFit.fill,
                height: 40,
                width: 300,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {},
              /*  height: 200,
              width: 340,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),*/
              child: Image.asset(
                "assets/sun-planet.jpg",
                fit: BoxFit.fill,
                height: 40,
                width: 300,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {},
              /* height: 200,
              width: 340,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),*/
              child: Image.asset(
                "assets/fast-food.jpg",
                fit: BoxFit.fill,
                height: 40,
                width: 300,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {},
              /*height: 200,
              width: 340,
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),*/
              child: Image.asset(
                "assets/unnamed.jpg",
                fit: BoxFit.fill,
                height: 40,
                width: 300,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {},
              /*height: 200,
              width: 340,
              decoration: BoxDecoration(
                color: Colors.pink,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),*/
              child: Image.asset(
                "assets/0.68487000_1559290735_70-20190615-dte-english.jpg",
                fit: BoxFit.fill,
                height: 40,
                width: 300,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
