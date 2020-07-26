import 'package:flutter/cupertino.dart';

class LessonView {
  static String lessonName;
  static int lessonCredit = 1;
  static double lessonGrade = 4;
}

class Lesson {
  String name;
  double gradeVal;
  int credit;
  Color lessonColor;
  Lesson(this.name, this.gradeVal, this.credit,this.lessonColor);

  static List<Lesson> Lessons=[];
}

class KeyManager {
  static var formKey = GlobalKey<FormState>();
  static var formKey2 = GlobalKey<FormState>();
}
