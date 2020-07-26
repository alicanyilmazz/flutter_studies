import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/UserInterface/DynamicGradeCalculator/homepage.dart';

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Grade Calculator",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.deepOrange
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
