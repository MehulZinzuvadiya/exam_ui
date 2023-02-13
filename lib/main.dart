import 'package:exam_ui/dataModel.dart';
import 'package:exam_ui/homeScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dataScreen.dart';
import 'splashScreen.dart';

List<dataModel> l1 = [];

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => SplashScreen(),
      'home': (context) => HomeScreen(),
      'data': (context) => DataScreen(),
    },
  ));
}
