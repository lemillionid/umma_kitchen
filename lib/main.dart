import 'package:flutter/material.dart';
import 'package:umma_kitchen/home_screen.dart';
import 'package:umma_kitchen/splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Umma's Kitchen",
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
