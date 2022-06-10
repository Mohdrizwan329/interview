import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search...."),
        backgroundColor: Colors.grey.shade400,
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Form(
                child: Column(children: [
                  SizedBox(
                    height: 10,
                    width: 143,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        hintText: "Search",
                        suffix: Icon(Icons.search),
                        suffixIcon: IconButton(
                            onPressed: () {}, icon: Icon(Icons.mic))),
                    onTap: () {},
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
