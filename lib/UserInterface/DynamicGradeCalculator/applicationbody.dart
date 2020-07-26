import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/UserInterface/DynamicGradeCalculator/Lesson.dart';
import 'dart:math';

class HomePageBody extends StatefulWidget {

  @override
  _HomePageBodyState createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {

  double _average = 0;
  int counter = 1;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          //Static Form Container
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            //color: Colors.pink.shade200,
            child: Form(
              key: KeyManager.formKey,
              child: Column(
                      children: <Widget>[
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: "Lesson Name",
                            hintText: "Please enter your lesson",
                            hintStyle: TextStyle(fontSize: 18),
                            labelStyle: TextStyle(fontSize: 16),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                              borderSide:
                                  BorderSide(color: Colors.orange, width: 2),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.green, width: 2),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.purple, width: 2),
                            ),
                          ),
                          validator: (enteredValue) {
                            if (enteredValue.length > 0) {
                              return null;
                            } else {
                              return "Lesson name can not empty!";
                            }
                          },
                          onSaved: (enteredValue) {
                            LessonView.lessonName = enteredValue;
                            setState(() {
                              Lesson.Lessons.add(Lesson(
                                  LessonView.lessonName,
                                  LessonView.lessonGrade,
                                  LessonView.lessonCredit,
                                  generateRandomColor()));
                              _average = 0;
                              calculateAverage();
                            });
                          },
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 4),
                              margin: EdgeInsets.only(top: 10),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton<int>(
                                  items: lessonCreditItems(),
                                  value: LessonView.lessonCredit,
                                  onChanged: (selectedCredit) {
                                    setState(() {
                                      LessonView.lessonCredit = selectedCredit;
                                    });
                                  },
                                ),
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.blue.shade300,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 4),
                              margin: EdgeInsets.only(top: 10),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton<double>(
                                  items: lessonDegreeItems(),
                                  value: LessonView.lessonGrade,
                                  onChanged: (selectedGrade) {
                                    setState(() {
                                      LessonView.lessonGrade = selectedGrade;
                                    });
                                  },
                                ),
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.red.shade300,
                                  width: 2,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
            ),
          ),

          //Dynamic List Container
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            height: 70,
            color: Colors.greenAccent.shade50,
            child: Center(
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(children: [
                  TextSpan(
                    text: Lesson.Lessons.length == 0
                        ? "Please enter a lesson "
                        : "Average :",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.lightBlue,
                    ),
                  ),
                  TextSpan(
                    text: Lesson.Lessons.length == 0
                        ? ""
                        : _average.toStringAsFixed(2),
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ]),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.orangeAccent.shade400,
              border: BorderDirectional(
                top: BorderSide(color: Colors.orange, width: 2),
                bottom: BorderSide(color: Colors.orange, width: 2),
              ),
            ),
          ),

          Expanded(
            child: Container(
              //color: Colors.green.shade200,
              child: ListView.builder(
                itemBuilder: _createListMember,
                itemCount: Lesson.Lessons.length,
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<DropdownMenuItem<int>> lessonCreditItems() {
    List<DropdownMenuItem<int>> credit = [];

    for (int i = 1; i <= 10; i++) {
      credit.add(DropdownMenuItem<int>(
        value: i,
        child: Text(
          "$i Credit",
          style: TextStyle(fontSize: 20),
        ),
      ));
    }

    return credit;
  }

  List<DropdownMenuItem<double>> lessonDegreeItems() {
    List<DropdownMenuItem<double>> grades = [];
    grades.add(
      DropdownMenuItem(
        child: Text(
          "AA",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        value: 4,
      ),
    );
    grades.add(
      DropdownMenuItem(
        child: Text(
          "BA",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        value: 3.5,
      ),
    );
    grades.add(
      DropdownMenuItem(
        child: Text(
          "BB",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        value: 3,
      ),
    );
    grades.add(
      DropdownMenuItem(
        child: Text(
          "CB",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        value: 2.5,
      ),
    );
    grades.add(
      DropdownMenuItem(
        child: Text(
          "CC",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        value: 2,
      ),
    );
    grades.add(
      DropdownMenuItem(
        child: Text(
          "DC",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        value: 1.5,
      ),
    );
    grades.add(
      DropdownMenuItem(
        child: Text(
          "DD",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        value: 1,
      ),
    );
    grades.add(
      DropdownMenuItem(
        child: Text(
          "FF",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        value: 0,
      ),
    );

    return grades;
  }

  Widget _createListMember(BuildContext context, int index) {
    counter++;

    return Dismissible(
      key: Key(counter.toString()),
      direction: DismissDirection.startToEnd,
      onDismissed: (direction) {
        setState(() {
          Lesson.Lessons.removeAt(index);
          calculateAverage();
        });
      },
      child: Container(
        decoration: BoxDecoration(
          border:
              Border.all(color: Lesson.Lessons[index].lessonColor, width: 2),
          borderRadius: BorderRadius.circular(10),
        ),
        margin: EdgeInsets.all(4),
        child: ListTile(
          leading: Icon(
            Icons.done_outline,
            size: 36,
            color: Lesson.Lessons[index].lessonColor,
          ),
          title: Text(Lesson.Lessons[index].name),
          trailing: Icon(
            Icons.keyboard_arrow_right,
            color: Lesson.Lessons[index].lessonColor,
          ),
          subtitle: Text(Lesson.Lessons[index].credit.toString() +
              " lesson credit grade value : " +
              Lesson.Lessons[index].gradeVal.toString()),
        ),
      ),
    );
  }

  void calculateAverage() {
    double sumGrades = 0, sumCredits = 0;

    for (var currentLesson in Lesson.Lessons) {
      sumGrades = sumGrades + (currentLesson.gradeVal * currentLesson.credit);
      sumCredits = sumCredits + currentLesson.credit;
    }

    _average = sumGrades / sumCredits;
  }

  Color generateRandomColor() {
    return Color.fromARGB(255, Random().nextInt(255), Random().nextInt(255),
        Random().nextInt(255));
  }
}
