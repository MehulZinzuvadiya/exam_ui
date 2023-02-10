import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, 'home');
    });
    return Scaffold(
      backgroundColor: Colors.brown.shade300,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 400,
              width: 400,
              child: FlutterLogo(),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "My Flutter",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          )
        ],
      ),
    );
  }
}
