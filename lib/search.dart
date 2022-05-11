import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Form(
              child: Column(children: [
                SizedBox(
                  height: 40,
                  width: 143,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      hintText: "Search",
                      suffix: Icon(Icons.search),
                      suffixIcon:
                          IconButton(onPressed: () {}, icon: Icon(Icons.mic))),
                  onTap: () {},
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
