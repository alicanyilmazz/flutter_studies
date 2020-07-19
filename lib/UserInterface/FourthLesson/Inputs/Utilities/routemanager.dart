import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/UserInterface/FourthLesson/Inputs/TextFormField.dart';
import 'package:flutterapp/UserInterface/FourthLesson/Inputs/checkboxlisttiles.dart';
import 'package:flutterapp/UserInterface/FourthLesson/Inputs/datetimepicker.dart';
import 'package:flutterapp/UserInterface/FourthLesson/Inputs/formpageone.dart';
import 'package:flutterapp/UserInterface/FourthLesson/Inputs/homepage.dart';
import 'package:flutterapp/UserInterface/FourthLesson/Inputs/stepper.dart';
import 'package:flutterapp/UserInterface/FourthLesson/Inputs/textfield.dart';


class RouteManager {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        {
          return MaterialPageRoute(builder: (_) => HomePage());
        }
      case '/formpage':
        {
          return MaterialPageRoute(builder: (_) => TextFields());
        }
      case '/formandtextformfield':
        {
          return MaterialPageRoute(builder: (_) => FormAndTextFormField());
        }
      case '/checkboxlisttile':
        {
          return MaterialPageRoute(builder: (_) => CheckBoxListTiles());
        }
      case '/dateandtimepicker':
        {
          return MaterialPageRoute(builder: (_) => DateAndTimePicker());
        }
      case '/stepperwidget':
        {
          return MaterialPageRoute(builder: (_) => StepperWidget());
        }
      case '/horoscopedetail':
        {
          if (args is String) {
            return MaterialPageRoute(
              builder: (_) => FormPageOne(
                data: args,
              ),
            );
          }
          return null;
        }
    }
  }
}
