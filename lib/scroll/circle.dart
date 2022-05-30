import 'package:flutter/material.dart';

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
