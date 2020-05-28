import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/UserInterface/FourthLesson/Inputs/Utilities/routemanager.dart';
import 'package:flutterapp/UserInterface/FourthLesson/Inputs/errorpage.dart';



class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: using for Application
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Horoscope Application",
      initialRoute: '/HomePage',
      onGenerateRoute: RouteManager.generateRoute,
      onUnknownRoute: (RouteSettings settings) =>
          MaterialPageRoute(builder: (context) => ErrorPage()),
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        accentColor: Colors.orange,
        brightness: Brightness.light,
      ),
      //home: HomePage(),
    );
  }
}
