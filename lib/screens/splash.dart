import 'dart:async';
import 'package:flutter/material.dart';
import 'dashboard.dart';
import 'dart:math';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Random random = Random();
    var number = random.nextInt(54);
    number = number < 12 ? number + 12 : number > 36 ? number - 18 : number;
    Timer(Duration(seconds: 3), () => Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) => DashboardScreen(
          age: number,
          username: "Shweta Furjar"
        )
      )
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/logo.png",
              fit: BoxFit.contain,
            ),
            SizedBox(
              height: 16,
            ),
            SizedBox(
              width: 196,
              child: LinearProgressIndicator()
            )
          ],
        ),
      )
    );
  }
}