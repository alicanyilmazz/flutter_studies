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
        return GestureDetector(
          child: Container(
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.deepOrange.shade200,
                  width: 10,
                  style: BorderStyle.solid,
                ),
                //borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.red.shade300,
                    offset: Offset(10.0, 5.0),
                    blurRadius: 10.0,
                  ),
                ],
                shape: BoxShape.circle,
                color: Colors.yellow[100 * (index % 9)],
                gradient: LinearGradient(
                  colors: [
                    Colors.orange.shade100,
                    Colors.orangeAccent.shade100,
                    Colors.deepOrangeAccent.shade100,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  tileMode: TileMode.clamp,
                ),
                image: DecorationImage(
                  image: AssetImage(
                    "assets/images/siri.png",
                  ),
                  fit: BoxFit.contain, //contain,cover,fill,fitheight,fitWidth
                  alignment: Alignment.topCenter,
                )),
            margin: EdgeInsets.all(20),
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                "Hello World",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ),
          onTap: ()=>debugPrint("default Press : $index pressed."),
          onDoubleTap: ()=>debugPrint("double Clicked : $index clicked."),
          onLongPress: ()=>debugPrint("Long Press : $index pressed."),
          onHorizontalDragStart: (e)=>debugPrint("OnHorizontalDragStart Press : $e clicked."),
        );
      },
    );
  }
}
