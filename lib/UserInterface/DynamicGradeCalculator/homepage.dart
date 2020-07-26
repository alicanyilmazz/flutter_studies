import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/UserInterface/DynamicGradeCalculator/Lesson.dart';
import 'package:flutterapp/UserInterface/DynamicGradeCalculator/applicationbody.dart';
import 'package:flutterapp/UserInterface/DynamicGradeCalculator/applicationbodylandscape.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text("Grade"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (KeyManager.formKey.currentState!=null && KeyManager.formKey.currentState.validate()) {
            KeyManager.formKey.currentState.save();
          }
          if (KeyManager.formKey2.currentState!=null && KeyManager.formKey2.currentState.validate()) {
            KeyManager.formKey2.currentState.save();
          }
        },
        child: Icon(Icons.add),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
         if(orientation==Orientation.portrait){
           return HomePageBody();
         }else{
           return HomePageLandScape();
         }
        },
      ),
    );
  }
}
