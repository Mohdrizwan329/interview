import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:interview/back/bg_image.dart';
import 'package:interview/home/home.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final userNameController = TextEditingController();
  final userPasswordController = TextEditingController();

  Future signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: userNameController.text.trim(),
        password: userNameController.text.trim());
  }

  @override
  void dispose() {
    userNameController.dispose();
    userPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
        backgroundColor: Colors.grey.shade400,
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          BgImage(),
          SingleChildScrollView(
            child: Column(
              children: [
                Form(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: TextFormField(
                          controller: userNameController,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "Enter User Account",
                              labelText: "Name"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: TextFormField(
                          obscureText: true,
                          controller: userPasswordController,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "Enter User Password",
                              labelText: "Password"),
                        ),
                      ),
                      // ignore: deprecated_member_use
                      RaisedButton(
                        onPressed: () {
                          signIn();
                          // Navigator.push(context,
                          //   MaterialPageRoute(builder: (context) => Home()));
                        },
                        child: Text("SigneIn"),
                        color: Colors.orange,
                      ),
                      Container(
                        child: Row(
                          children: [
                            Container(
                              child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Forgot your login details?",
                                  style: TextStyle(
                                      color: Colors.pink,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Container(
                              child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Get help logging in.",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Text(
                          "---------------- OR ------------- ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              TextButton(
                                onPressed: () {},
                                child: CircleAvatar(
                                  child: Icon(Icons.facebook),
                                  //backgroundImage: AssetImage("assets/b.jpeg"),
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: CircleAvatar(
                                  child: Icon(Icons.email),
                                  //backgroundImage: AssetImage("assets/e.png"),
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: CircleAvatar(
                                  child: Icon(Icons.phone),
                                  //backgroundImage: AssetImage("assets/b.jpeg"),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
