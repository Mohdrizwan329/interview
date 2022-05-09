import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class BgImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Image.asset(
      "assets/photo-1528639194116-01a1dabcab68.jpg",
      fit: BoxFit.fill,
      color: Colors.black.withOpacity(0.9),
      colorBlendMode: BlendMode.color,
    );
  }
}
