import 'dart:async';
import 'package:flutter/material.dart';
import 'package:umma_kitchen/home_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => ExpandedFlexiblePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              child: Image.asset(
                "assets/images/recipe-book.png",
                height: 100,
                width: 100,
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            Text(
              "Umma's Kitchen",
              style: TextStyle(
                  fontFamily: "Philosopher",
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple),
            )
          ],
        ),
      ),
    );
  }
}
