import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Setting"),
        backgroundColor: Colors.grey.shade400,
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Card(
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.grey),
                accountName: Text("Mohd Jiyan",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                accountEmail: Text("Mriz15293@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage(
                    "assets/photo-1528639194116-01a1dabcab68.jpg",
                  ),
                ),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(
                  Icons.account_box,
                  size: 40,
                ),
                title: Text(
                  "Account",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                subtitle: Text("Persnal"),
                trailing: Icon(Icons.add),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(
                  Icons.account_balance,
                  size: 40,
                ),
                title: Text("Account balance",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                subtitle: Text("Persnal"),
                trailing: Icon(Icons.account_balance),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(
                  Icons.privacy_tip,
                  size: 40,
                ),
                title: Text("privacy",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                subtitle: Text("Persnal"),
                trailing: Icon(Icons.privacy_tip),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(
                  Icons.policy,
                  size: 40,
                ),
                title: Text("Policy",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                subtitle: Text("Public"),
                trailing: Icon(Icons.account_box),
              ),
            ),
            Card(
              child: ListTile(
                  leading: Icon(
                    Icons.help_center,
                    size: 40,
                  ),
                  title: Text("Help Center",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  subtitle: Text("Public"),
                  trailing: Icon(
                    Icons.read_more,
                  )),
            ),
            Card(
              child: ListTile(
                  leading: Icon(
                    Icons.logout,
                    size: 40,
                  ),
                  title: Text("Log Out",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  subtitle: Text("Public"),
                  trailing: Icon(Icons.logout)),
            ),
          ],
        ),
      ),
    );
  }
}
