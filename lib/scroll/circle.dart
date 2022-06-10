import 'package:flutter/material.dart';
import 'package:interview/junk_food/Chipotle.dart';
import 'package:interview/junk_food/dunkin_donuts.dart';
import 'package:interview/junk_food/kfc.dart';
import 'package:interview/junk_food/mcdonald.dart';
import 'package:interview/junk_food/pizza.dart';
import 'package:interview/junk_food/pizza_hut.dart';

class Circle extends StatelessWidget {
  get children => null;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 530,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MacDonald()));
              },
              child: CircleAvatar(
                backgroundImage:
                    AssetImage("assets/McDonalds-logo-640x360.png"),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => KFC()));
              },
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/Kfc_logo-768x432.png"),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Pizza()));
              },
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/Domino’s-Logo-640x524.png"),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DunkinDonuts()));
              },
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/Dunkin-Donuts-Logo.png"),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PizzaHut()));
              },
              child: CircleAvatar(
                backgroundImage:
                    AssetImage("assets/Pizza-Hut-logo-640x441.png"),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Chipotle()));
              },
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/Chipotle-logo-768x432.png"),
              ),
            ),
          ],
        ));
  }
}
