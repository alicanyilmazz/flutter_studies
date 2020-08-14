import 'package:flutter/material.dart';
import 'package:flutterapp/UserInterface/FashionApp/homepage.dart';

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Grade Calculator",
      theme: ThemeData(
        primarySwatch: Colors.amber,
        accentColor: Colors.deepOrange,
        fontFamily: '',
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
