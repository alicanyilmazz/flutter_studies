import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/UserInterface/ThirdLesson/page_one.dart';
import 'package:flutterapp/UserInterface/ThirdLesson/page_three.dart';
import 'package:flutterapp/UserInterface/ThirdLesson/page_two.dart';

class HomePageBody extends StatelessWidget {
  String _data = "Sending Data";

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
            child: Text("Navigate to A Page"),
            color: Colors.lightBlueAccent,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PageOne(),
                ),
              );
            },
          ),
          RaisedButton(
            child: Text("Navigate to B Page"),
            color: Colors.deepOrange.shade500,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PageTwo(_data),
                ),
              );
            },
          ),
          RaisedButton(
            child: Text(
              "Navigate to D Page and bring the data",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            color: Colors.amber,
            onPressed: () {
              Navigator.push<String>(
                context,
                MaterialPageRoute(
                  builder: (context) => PageThree(),
                ),
              ).then((e) {
                debugPrint("Comed data after pop process : $e");
              });
            },
          ),
        ],
      ),
    );
  }
}
