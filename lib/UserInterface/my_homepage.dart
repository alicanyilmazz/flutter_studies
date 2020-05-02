import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'app_body.dart';

class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: Using For HomePage
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Alican Yılmaz",
          style: TextStyle(fontSize: 24.0, color: Colors.white),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint("FAB TIKLANDI");
        },
        backgroundColor: Colors.pinkAccent,
        child: Icon(
          Icons.access_alarm,
          size: 24.0,
          color: Colors.white,
        ),
      ),
      body: AppBody(),
    );
  }

}