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
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.orange),
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
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: ListTile(
                tileColor: Colors.greenAccent,
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
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: ListTile(
                tileColor: Colors.grey,
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
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: ListTile(
                tileColor: Colors.amberAccent,
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
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: ListTile(
                tileColor: Colors.brown,
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
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: ListTile(
                  tileColor: Colors.cyan,
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
          ],
        ),
      ),
    );
  }
}
