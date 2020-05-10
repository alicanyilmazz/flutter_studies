import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/UserInterface/ThirdLesson/pagethree_body.dart';

class PageThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Page C AppBar",
          style: TextStyle(
            fontSize: 24.0,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.pink.shade200,
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
      body: PageThreeBody("Page Three"),
    );
  }
}