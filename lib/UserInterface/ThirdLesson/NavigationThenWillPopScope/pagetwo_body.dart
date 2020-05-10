import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageTwoBody extends StatelessWidget {
  String _data;

  PageTwoBody(this._data);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Two Page coming data : $_data",
            style: TextStyle(
              color: Colors.white,
              backgroundColor: Colors.greenAccent,
              fontSize: 24,
            ),
          ),
          RaisedButton(
            color: Colors.pink.shade300,
            child: Text("Turn Back"),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
