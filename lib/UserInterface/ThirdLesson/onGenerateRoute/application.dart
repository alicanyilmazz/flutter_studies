import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/UserInterface/ThirdLesson/NavigationBasic/page_one.dart';
import 'package:flutterapp/UserInterface/ThirdLesson/NavigationBasic/page_two.dart';
import 'package:flutterapp/UserInterface/ThirdLesson/NavigationPushReplacementRota/page_four.dart';
import 'package:flutterapp/UserInterface/ThirdLesson/NavigationPushReplacementRota/page_three.dart';
import 'package:flutterapp/UserInterface/ThirdLesson/errorpage.dart';
import 'package:flutterapp/UserInterface/ThirdLesson/homepage.dart';
import 'package:flutterapp/UserInterface/ThirdLesson/onGenerateRoute/listpage.dart';

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: using for Application
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Studies",
      initialRoute: '/PageOne/PageTwo/PageThree/PageFour',
      routes: {
        '/': (context) => HomePage(),
        '/PageOne': (context) => PageOne(),
        '/PageOne/PageTwo/PageThree/PageFour':(context)=>PageFour(),
        '/PageOne/PageTwo/PageThree':(context)=>PageThree(),
        '/PageOne/PageTwo':(context)=>PageTwo(""),
        '/ListPage':(context)=>ListPage(),
      },
      onGenerateRoute: (RouteSettings settings){
        List<String> pathMember=settings.name.split("/");
        if(pathMember[1]=='detail')
        {
          return MaterialPageRoute(builder: (context)=>ListDetail(int.parse(pathMember[2])));
        }
        if(pathMember[1]=='product')
        {
          if(pathMember[2]=='detail')
          {

          }
        }
        throw Exception("Path Route");
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
