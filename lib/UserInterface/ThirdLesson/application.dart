import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/UserInterface/ThirdLesson/errorpage.dart';
import 'package:flutterapp/UserInterface/ThirdLesson/homepage.dart';


class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: using for Application
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Studies",
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
      },
      onUnknownRoute: (RouteSettings settings)=>MaterialPageRoute(builder: (context)=>ErrorPage()),
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        accentColor: Colors.orange,
        brightness: Brightness.dark,
      ),
      //home: HomePage(),
    );
  }
}
