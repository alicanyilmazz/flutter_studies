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
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), // Alternative " SliverGridDelegateWithMaxCrossAxisExtent "
        itemBuilder: (BuildContext context,int index)
        {
          return Container(
            alignment: Alignment.center,
            color: Colors.teal[100*(index %9)],
            child: Text("Hello World",textAlign: TextAlign.center,),
          );
        },
    );
  }
}
