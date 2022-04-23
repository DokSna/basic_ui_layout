import 'package:flutter/material.dart';
// import 'pages/home_page.dart';   //build
import 'pages/pixel_perfect.dart'; //dev

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ProfileScreen(),
    );
  }
}
