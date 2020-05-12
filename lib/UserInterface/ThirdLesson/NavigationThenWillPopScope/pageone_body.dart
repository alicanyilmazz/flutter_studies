import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/UserInterface/ThirdLesson/NavigationBasic/page_two.dart';


class PageOneBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "One Page",
            style: TextStyle(
              color: Colors.white,
              backgroundColor: Colors.pink,
              fontSize: 24,
            ),
          ),
          RaisedButton(
            color: Colors.deepOrangeAccent,
            child: Text("Navigate to C"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PageTwo("Alican"),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
