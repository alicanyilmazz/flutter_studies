import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/UserInterface/ThirdLesson/homepage_body.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Card ListTitle",
          style: TextStyle(
            fontSize: 24.0,
            color: Colors.white,
          ),
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
      body: HomePageBody(),
    );
  }
}
