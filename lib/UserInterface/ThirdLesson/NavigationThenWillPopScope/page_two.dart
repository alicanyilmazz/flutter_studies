import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'pagetwo_body.dart';

class PageTwo extends StatelessWidget {
  String _data;

  PageTwo(this._data);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Page Two App Bar",
          style: TextStyle(
            fontSize: 24.0,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.green,
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
      body: PageTwoBody(_data),
    );
  }
}
