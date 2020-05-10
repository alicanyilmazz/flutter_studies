import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:bot_toast/bot_toast.dart';

class HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: Using For HomePageBody

    return GridView.builder(
      itemCount: 100,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount:
              2), // Alternative " SliverGridDelegateWithMaxCrossAxisExtent "
      itemBuilder: (BuildContext context, int index) {
        return Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.yellow[100 * (index % 9)],
            gradient: LinearGradient(
              colors: [Colors.blue.shade200, Colors.pink.shade200,Colors.deepOrange.shade200],
              begin: Alignment.centerRight,
              end: Alignment(-1.0, -1.0),
              tileMode: TileMode.repeated,
            ),
          ),
          margin: EdgeInsets.all(20),
          child: Text(
            "Hello World",
            textAlign: TextAlign.center,
          ),
        );
      },
    );
  }
}
