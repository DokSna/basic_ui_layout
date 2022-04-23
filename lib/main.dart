import 'package:flutter/material.dart';
import 'package:pixel_perfect/pixel_perfect.dart';

const imagePath = 'assets/ui/';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Weather Forecast',
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PixelPerfect(
        assetPath: imagePath + 'DZ_Layout_UI_412.png', child: const Scaffold());
  }
}
