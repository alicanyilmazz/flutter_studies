import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HoroscopeImage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Card(
          color: Colors.blueAccent,
          child: Text("This is a image page."),
        ),
      ),
    );
  }
}
