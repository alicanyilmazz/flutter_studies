import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'onepage_body.dart';

class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Page A AppBar",
          style: TextStyle(
            fontSize: 24.0,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blueAccent,
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
      body: OnePageBody(),
    );
  }
}