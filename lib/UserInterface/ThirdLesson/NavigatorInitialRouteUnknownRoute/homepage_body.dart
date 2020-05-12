import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/UserInterface/ThirdLesson/NavigationBasic/page_two.dart';
import 'package:flutterapp/UserInterface/ThirdLesson/NavigationPushReplacementRota/page_four.dart';
import 'package:flutterapp/UserInterface/ThirdLesson/NavigationPushReplacementRota/page_three.dart';


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
              Navigator.pushNamed(context, "/PageOne");
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
              "Navigate to C Page",
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
          RaisedButton(
            child: Text("Navigate to D Page"),
            color: Colors.teal.shade500,
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => PageFour(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
