import 'package:flutter/material.dart';
import 'package:interview/back/login_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Interview",
    home: LoginPage(),
    color: Colors.pink,
  ));
}

class Firebase {
  static initializeApp() {}
}
