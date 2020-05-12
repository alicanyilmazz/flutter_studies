import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/UserInterface/ThirdLesson/NavigationPushReplacementRota/page_five.dart';


class PageFourBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "One Four",
            style: TextStyle(
              color: Colors.white,
              backgroundColor: Colors.pink,
              fontSize: 24,
            ),
          ),
          RaisedButton(
            color: Colors.deepOrangeAccent,
            child: Text("Navigate to E"),
            onPressed: () {
              Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>PageFive()));
            },
          ),
        ],
      ),
    );
  }
}
