import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: Using For HomePageBody
    return Column(
      children: <Widget>[
        Card(
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
            title: Text("Member of list title."),
            subtitle: Text("Member of list subtitle."),
            trailing: Icon(
              Icons.add_circle_outline,
              color: Colors.amber.shade300,
            ),
          ),
        ),
        Divider(
          color: Colors.orange.shade300,
          height: 10,
          indent: 20,
          endIndent: 20,
        ),
        Card(
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
            title: Text("Member of list title."),
            subtitle: Text("Member of list subtitle."),
            trailing: Icon(
              Icons.add_circle_outline,
              color: Colors.amber.shade300,
            ),
          ),
        ),
        Divider(
          color: Colors.orange.shade300,
          height: 10,
          indent: 20,
          endIndent: 20,
        ),
        Card(
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
            title: Text("Member of list title."),
            subtitle: Text("Member of list subtitle."),
            trailing: Icon(
              Icons.add_circle_outline,
              color: Colors.amber.shade300,
            ),
          ),
        ),
      ],
    );
  }
}
