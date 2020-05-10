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
            //showToastMessage(index);
            showAlertDialog(context);
          },
          onLongPress: () {
            showToastMessageDefault(index);
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

  void showToastMessageDefault(int index) {
    Fluttertoast.showToast(
        msg: "Long selected item $index",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  void showToastMessage(int index) {
    //popup a attachments toast
    BotToast.showAttachedWidget(
      attachedBuilder: (_) => Card(
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10),
              child: Icon(
                Icons.add_circle,
                color: Colors.pinkAccent.shade200,
              ),
            ),
            Expanded(
              child: Text(student[index].toString()),
            ),
          ],
        ),
        elevation: 500,
        color: Colors.grey.shade100,
        margin: EdgeInsets.all(5),
      ),
      duration: Duration(seconds: 2),
      target: Offset(500, 500),
    );
  }

  void showAlertDialog(BuildContext _context) {
    showDialog(
        context: _context,
        barrierDismissible: false,
        builder: (_context) {
          return AlertDialog(
            title: Text("WARNING"),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text("You can only use specific pattern."),
                  Card(
                    child: FadeInImage.assetNetwork(
                        placeholder: "assets/images/loading.gif",
                        image:
                            "https://geekyapar.com/wp-content/uploads/2019/10/yennefer-after-the-tansformation.jpeg"),
                    elevation: 10,
                    color: Colors.pinkAccent.shade50,
                  ),
                  Text("Yennefer"),
                  Card(
                    child: FadeInImage.assetNetwork(
                        placeholder: "assets/images/loading.gif",
                        image:
                            "https://vignette.wikia.nocookie.net/witcherturkey/images/5/51/Netflix_geralt_shirt.jpg/revision/latest?cb=20200106120119&path-prefix=tr"),
                    elevation: 10,
                    margin: EdgeInsets.all(20),
                  ),
                  Text("Geralt"),
                  Card(
                    child: FadeInImage.assetNetwork(
                        placeholder: "assets/images/loading.gif",
                        image:
                            "https://geekyapar.com/wp-content/uploads/2019/11/renfri-500-x-500.png"),
                    elevation: 10,
                  ),
                  Text("Renfri"),
                ],
              ),
            ),
            actions: <Widget>[
              ButtonBarTheme(
                data: ButtonBarThemeData(),
                child: ButtonBar(
                  children: <Widget>[
                    FlatButton(
                      child: Text("Accept"),
                      onPressed: (){Navigator.of(_context).pop();},
                      color: Colors.cyanAccent.shade200,
                    ),
                    RaisedButton(
                      child: Text("Ignore"),
                      onPressed: (){Navigator.of(_context).pop();},
                      color: Colors.pinkAccent.shade200,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                    ),
                  ],
                ),
              ),
              Card(),
            ],
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0))),
          );
        });
  }

  void accepted() {}
  void rejected() {}
}

class Student {
  String _name;
  String _explanation;
  bool _gender;

  Student(this._name, this._explanation, this._gender);

  @override
  String toString() {
    // TODO: implement toString
    return "Selected students name : $_name + explanation : $_explanation";
  }
}
