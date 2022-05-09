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
            Container(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/a.jpeg"),
              ),
            ),
            Container(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/b.jpeg"),
              ),
            ),
            Container(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/c.jpeg"),
              ),
            ),
            Container(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/d.jpeg"),
              ),
            ),
            Container(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/a.jpeg"),
              ),
            ),
            Container(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/a.jpeg"),
              ),
            ),
          ],
        ));
  }
}
