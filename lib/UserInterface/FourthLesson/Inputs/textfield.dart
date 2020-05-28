import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFields extends StatefulWidget {
  @override
  _TextFieldState createState() => _TextFieldState();
}

class _TextFieldState extends State<TextFields> {
  String _inputData = "Default Data";
  FocusNode _focusNode;
  int _maxLine = 1;
  TextEditingController textController1;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode(); //For Focused the Node
    textController1 = TextEditingController(text: "default");
    _focusNode.addListener(() {
      setState(() {
        if (_focusNode.hasFocus) {
          _maxLine = 3;
        } else {
          _maxLine = 1;
        }
      });
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    textController1.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Input Operations"),
        backgroundColor: Colors.orange,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          FocusScope.of(context).requestFocus(_focusNode);
        },
        child: Icon(Icons.edit),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.done,
              textAlign: TextAlign.start,
              controller: textController1,
              textDirection: TextDirection.ltr,
              autofocus: false,
              focusNode: _focusNode, //For Focused the Node
              autocorrect: true,
              maxLines: _maxLine,
              decoration: InputDecoration(
                hintText: "Enter a value",
                labelText: "Header",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                icon: Icon(
                  Icons.accessibility,
                  color: Colors.orange,
                ),
                prefixIcon: Icon(
                  Icons.change_history,
                  color: Colors.pink,
                ),
                suffixIcon: Icon(
                  Icons.attach_money,
                  color: Colors.purple,
                ),
                filled: true,
                fillColor: Colors.red.shade100,
              ),
              maxLength: 20,
              maxLengthEnforced: true,
              onChanged: (String e) => debugPrint("On change : $e"),
              onSubmitted: (String e) {
                setState(() {
                  _inputData = e;
                });
              },
              cursorColor: Colors.pink,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.done,
              textAlign: TextAlign.start,
              textDirection: TextDirection.ltr,
              autofocus: false,
              autocorrect: true,
              maxLines: 1,
              decoration: InputDecoration(
                hintText: "Enter a value",
                labelText: "Header",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                icon: Icon(
                  Icons.accessibility,
                  color: Colors.orange,
                ),
                prefixIcon: Icon(
                  Icons.change_history,
                  color: Colors.pink,
                ),
                suffixIcon: Icon(
                  Icons.attach_money,
                  color: Colors.purple,
                ),
                filled: true,
                fillColor: Colors.red.shade100,
              ),
              maxLength: 20,
              maxLengthEnforced: true,
              onChanged: (String e) => debugPrint("On change : $e"),
              onSubmitted: (String e) {
                setState(() {
                  _inputData = e;
                });
              },
              cursorColor: Colors.pink,
            ),
          ),
          Center(
            child: RaisedButton(
              child: Icon(Icons.arrow_forward),
              color: Colors.orange,
              onPressed: () {
                debugPrint(textController1.text.toString());
              },
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            width: double.infinity,
            height: 200,
            color: Colors.teal.shade400,
            child: Align(
              alignment: Alignment.center,
              child: Text(_inputData),
            ),
          ),
        ],
      ),
    );
  }
}

/*
 FloatingActionButton(
            onPressed: () {
              FocusScope.of(context).requestFocus(_focusNode);
            },
            child: Icon(Icons.edit),
          ),

*/
