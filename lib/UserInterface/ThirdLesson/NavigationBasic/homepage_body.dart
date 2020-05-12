import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/UserInterface/ThirdLesson/NavigationBasic/page_one.dart';
import 'package:flutterapp/UserInterface/ThirdLesson/NavigationBasic/page_two.dart';


class HomePageBody extends StatelessWidget {

  String _data="Sending Data";

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
            color: Colors.blue.shade500,
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
            color: Colors.blue.shade500,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PageTwo(_data),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
