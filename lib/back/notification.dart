// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, dead_code

import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class Notifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Notification"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: ListView.builder(
                itemCount: 50,
                itemBuilder: (context, index) {
                  return Container(
                    child: Card(
                      child: ListTile(
                        leading:
                            CircleAvatar(child: Image.asset("assets/a.jpeg")),
                        title: Text("Massages"),
                        subtitle: Text("Persnal"),
                        trailing: Icon(Icons.skip_next),
                      ),
                    ),
                  );
                }),
          ),
        ));
  }
}
