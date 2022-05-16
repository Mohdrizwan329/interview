// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class Circle extends StatelessWidget {
  get children => null;

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
        height: 530,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[
            InkWell(
              onTap: () {},
              child: CircleAvatar(
                backgroundImage:
                    AssetImage("assets/McDonalds-logo-640x360.png"),
              ),
            ),
            InkWell(
              onTap: () {},
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/Kfc_logo-768x432.png"),
              ),
            ),
            InkWell(
              onTap: () {},
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/Domino’s-Logo-640x524.png"),
              ),
            ),
            InkWell(
              onTap: () {},
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/Dunkin-Donuts-Logo.png"),
              ),
            ),
            InkWell(
              onTap: () {},
              child: CircleAvatar(
                backgroundImage:
                    AssetImage("assets/Pizza-Hut-logo-640x441.png"),
              ),
            ),
            InkWell(
              onTap: () {},
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/Chipotle-logo-768x432.png"),
              ),
            ),
          ],
        ));
  }
}
