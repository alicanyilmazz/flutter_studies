import 'package:flutter/material.dart';

class FormPageOne extends StatelessWidget {
  final String data;
  FormPageOne({Key key, @required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Input Operations"),
        backgroundColor: Colors.orangeAccent,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(10),
          width: double.infinity,
          height: MediaQuery.of(context).size.height / 2,
          color: Colors.teal.shade400,
          child: Align(
            alignment: Alignment.center,
            child: Text("Hello World."),
          ),
        ),
      ),
    );
  }
}
