import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:bot_toast/bot_toast.dart';

class HomePageBody extends StatelessWidget {
  List<Student> student = new List<Student>();

  @override
  Widget build(BuildContext context) {
    // TODO: Using For HomePageBody
    getData();
    return ListView.separated(
      separatorBuilder: (context, index) {
        if (index % 4 == 0 && index != 0)
          return Container(
            height: 2,
            color: Colors.pinkAccent,
            margin: EdgeInsets.all(40),
          );
        return Container(
          color: Colors.pink,
        );
      },
      itemCount: 20,
      itemBuilder: (context, index) => Card(
        elevation: 4,
        color: index % 2 == 0 ? Colors.amber.shade200 : Colors.purple.shade200,
        child: ListTile(
          leading: Icon(
            Icons.person_outline,
            color: student[index]._gender == true ? Colors.cyan : Colors.pink,
          ),
          title: Text(student[index]._name),
          subtitle: Text(student[index]._explanation),
          trailing: Icon(Icons.add),
          onTap: () {
            //popup a attachments toast
            BotToast.showAttachedWidget(
                attachedBuilder: (_) => Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Expanded(
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Icon(
                            Icons.add_circle,
                            color: Colors.pinkAccent.shade200,
                          ),
                        ),
                        elevation: 500,
                        color: Colors.grey.shade100,
                        margin: EdgeInsets.all(5),
                      ),
                    ),
                  ],
                ),
                duration: Duration(seconds: 2),
                target: Offset(500, 500),
            );
          },
          onLongPress: () {
            Fluttertoast.showToast(
                msg: "Long selected item $index",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.CENTER,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.red,
                textColor: Colors.white,
                fontSize: 16.0);
          },
        ),
      ),
    );
  }

  void getData() {
    student = List.generate(
        300,
        (index) => Student(
              "Student $index Name",
              "Student $index explanation",
              index % 2 == 0 ? true : false,
            ));
  }
}

class Student {
  String _name;
  String _explanation;
  bool _gender;

  Student(this._name, this._explanation, this._gender);
}
