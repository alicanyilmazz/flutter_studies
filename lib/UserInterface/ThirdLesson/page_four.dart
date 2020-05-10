import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/UserInterface/ThirdLesson/pagefour_body.dart';

import 'pageone_body.dart';

class PageFour extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Page D AppBar",
          style: TextStyle(
            fontSize: 24.0,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.greenAccent,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint("FAB TIKLANDI");
        },
        backgroundColor: Colors.indigo,
        child: Icon(
          Icons.access_alarm,
          size: 24.0,
          color: Colors.white,
        ),
      ),
      body: PageFourBody(),
    );
  }
}