import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/UserInterface/ThirdLesson/NavigationBasic/page_one.dart';
import 'package:flutterapp/UserInterface/ThirdLesson/homepage.dart';

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: using for Application
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Studies",
      routes: {
        '/': (context) => HomePage(),
        '/PageOne': (context) => PageOne(),
      },
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        accentColor: Colors.orange,
        brightness: Brightness.dark,
      ),
      //home: HomePage(),
    );
  }
}
