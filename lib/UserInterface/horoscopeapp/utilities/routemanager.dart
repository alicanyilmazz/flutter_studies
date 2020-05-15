import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/UserInterface/horoscopeapp/homepage.dart';
import 'package:flutterapp/UserInterface/horoscopeapp/horoscope_detail.dart';
import 'package:flutterapp/UserInterface/horoscopeapp/horoscope_image.dart';

class RouteManager {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        {
          return MaterialPageRoute(builder: (_) => HomePage());
        }
      case '/horoscopeimage':
        {
          return MaterialPageRoute(builder: (_) => HoroscopeImage());
        }
      case '/horoscopedetail':
        {
          if (args is String) {
            return MaterialPageRoute(
              builder: (_) => HoroscopeDetail(
                data: args,
              ),
            );
          }
          return null;
        }
    }
  }
}
