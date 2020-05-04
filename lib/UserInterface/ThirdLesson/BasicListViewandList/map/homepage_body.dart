import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePageBody extends StatelessWidget {
  //Data Source for ListView
  List<int> numberOfList = List.generate(300, (index) => index);
  List<String> numberofSubTitle =
      List.generate(300, (index) => "Member of subtitle $index");

  @override
  Widget build(BuildContext context) {
    // TODO: Using For HomePageBody
    return ListView(
      children: numberOfList
          .map((currentMember) => Card(
                color: Colors.teal.shade200,
                margin: EdgeInsets.all(9),
                elevation: 20,
                child: ListTile(
                  leading: CircleAvatar(
                    child: Icon(
                      Icons.person_outline,
                      color: Colors.pinkAccent.shade400,
                    ),
                    radius: 12,
                  ),
                  title: Text("$currentMember"),
                  subtitle: Text(numberofSubTitle[currentMember]),
                  trailing: Icon(
                    Icons.add_circle_outline,
                    color: Colors.amber.shade300,
                  ),
                ),
              ))
          .toList(),
    );
  }
}
