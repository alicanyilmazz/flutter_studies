import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePageBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      child: Center(
        child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text("textfield"),
              color: Colors.pink,
              onPressed: (){
                Navigator.pushNamed(context, "/formpage");
              },
            ),
            RaisedButton(
              child: Text("formfield"),
              color: Colors.orange,
              onPressed: (){
                Navigator.pushNamed(context, "/formandtextformfield");
              },
            ),
            RaisedButton(
              child: Text("checkbox"),
              color: Colors.tealAccent,
              onPressed: (){
                Navigator.pushNamed(context, "/checkboxlisttile");
              },
            ),
            RaisedButton(
              child: Text("Date and Time Picker"),
              color: Colors.purple,
              onPressed: (){
                Navigator.pushNamed(context, "/dateandtimepicker");
              },
            ),
            RaisedButton(
              child: Text("Stepper"),
              color: Colors.blueGrey,
              onPressed: (){
                Navigator.pushNamed(context, "/stepperwidget");
              },
            ),
          ],
        ),
      ),
    );
  }
}
