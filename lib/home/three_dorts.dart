import 'package:flutter/material.dart';

class ThreeDarts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.arrow_back),
            onTap: () {},
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.category),
              title: Text(
                "Category",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
              ),
              onTap: () {},
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.shopping_bag_outlined),
              title: Text(
                "My order",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
              ),
              onTap: () {},
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.list),
              title: Text(
                "My list",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
              ),
              onTap: () {},
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.account_box),
              title: Text(
                "My account",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
              ),
              onTap: () {},
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.local_offer),
              title: Text(
                "All offers",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
              ),
              onTap: () {},
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.home),
              title: Text(
                "FAQ",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
              ),
              onTap: () {},
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.room_service_sharp),
              title: Text(
                "Customer service",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
              ),
              onTap: () {},
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.chat),
              title: Text(
                "Live chat",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
              ),
              onTap: () {},
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.login),
              title: Text(
                "Sign in",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
              ),
              onTap: () {},
            ),
          ),
        ],
      ),
    ]);
  }
}
