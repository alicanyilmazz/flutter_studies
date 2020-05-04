import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/UserInterface/ThirdLesson/homepage.dart';

class Application extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: using for Application
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: BotToastInit(), //1. call BotToastInit
      navigatorObservers: [BotToastNavigatorObserver()], //2. registered route observer
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        accentColor: Colors.orange,
      ),
      home: HomePage(),
    );
  }

}