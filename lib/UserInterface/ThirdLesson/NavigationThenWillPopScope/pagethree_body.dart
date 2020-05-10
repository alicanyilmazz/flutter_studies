import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageThreeBody extends StatelessWidget {
  String _data;

  PageThreeBody(this._data);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Three Page coming data : $_data",
                style: TextStyle(
                  color: Colors.white,
                  backgroundColor: Colors.deepPurple,
                  fontSize: 24,
                ),
              ),
              RaisedButton(
                color: Colors.pink.shade300,
                child: Text("Turn Back"),
                onPressed: () {
                  Navigator.pop<String>(context, "true");
                },
              ),
            ],
          ),
        ),
        onWillPop: (){
          Navigator.pop(context,"false");
          return Future.value(false);
        });
  }
}
