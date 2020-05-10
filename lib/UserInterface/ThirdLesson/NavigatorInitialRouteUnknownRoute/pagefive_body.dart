import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/UserInterface/ThirdLesson/NavigationBasic/page_one.dart';
import 'package:flutterapp/UserInterface/ThirdLesson/page_two.dart';
import 'package:flutterapp/UserInterface/ThirdLesson/pagetwo_body.dart';

class PageFiveBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "One Five",
            style: TextStyle(
              color: Colors.white,
              backgroundColor: Colors.pink,
              fontSize: 24,
            ),
          ),
          RaisedButton(
            color: Colors.teal,
            child: Text("Navigate to A"),
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
            color: Colors.red,
            child: Text("Navigate to ?"),
            onPressed: () {
              Navigator.pushNamed(context, "routeName");
            },
          ),
        ],
      ),
    );
  }
}
