import 'package:flutter/material.dart';

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
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      body: Column(
        children: <Widget>[
          Text("Using Personal Font",style: TextStyle(fontFamily: 'ssh',fontSize: 24,),),
          Text("Using Personal Font",style: TextStyle(fontFamily: 'RobotoMono',fontSize: 24,),),
          Text("Using Personal Font",style: TextStyle(fontFamily: 'RobotoMono',fontSize: 24,fontWeight: FontWeight.w700),),
          Text("Default Font",style: TextStyle(fontFamily: 'ssh',fontSize: 24,),),
        ],
      ),
    );
  }
}
