import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePageBody extends StatelessWidget {

  List<Student> student = new List<Student>();

  @override
  Widget build(BuildContext context) {
    // TODO: Using For HomePageBody
    getData();
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) => Card(
        elevation: 4,
        color: index%2==0 ? Colors.amber.shade200 : Colors.purple.shade200,
        child: ListTile(
          leading: Icon(Icons.person_outline,color: student[index]._gender==true ? Colors.cyan : Colors.pink,),
          title: Text(student[index]._name),
          subtitle: Text(student[index]._explanation),
          trailing: Icon(Icons.add),
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
