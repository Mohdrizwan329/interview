import 'package:flutter/material.dart';

class ThreeDorts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(children: [
        ListTile(
          title: Text("Category"),
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.category)),
        ),
        ListTile(
          title: Text("Category"),
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.category)),
        )
      ]),
    );
  }
}
