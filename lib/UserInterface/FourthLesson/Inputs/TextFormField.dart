import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FormAndTextFormField extends StatefulWidget {
  @override
  _FormAndTextFormFieldState createState() => _FormAndTextFormFieldState();
}

class _FormAndTextFormFieldState extends State<FormAndTextFormField> {
  String _nameSurname, _password, _emailAddress;
  bool autoValidate = false;

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        accentColor: Colors.greenAccent,
        primaryColor: Colors.orange,
        errorColor: Colors.red,
      ),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.arrow_forward),
        ),
        appBar: AppBar(
          title: Text(
            "Form and TextFormField",
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Form(
            key: formKey,
            autovalidate: autoValidate,
            child: ListView(
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    prefix: Icon(Icons.account_circle),
                    hintText: "Please enter full name",
                    labelText: "Name Surname",
                    border: OutlineInputBorder(),
                  ),
                  //initialValue: "firs value",
                  validator: (String val) {
                    if (val.length < 6) {
                      return "Please enter name and surname";
                    } else {
                      return null;
                    }
                  },
                  onSaved: (val) => _nameSurname = val,
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    prefix: Icon(Icons.email),
                    hintText: "Please email address",
                    labelText: "Email",
                    border: OutlineInputBorder(),
                  ),
                  validator: validateEmail,
                  onSaved: (val) => _emailAddress = val,
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: InputDecoration(
                    prefix: Icon(Icons.lock),
                    hintText: "Please enter your password",
                    labelText: "Password",
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.pink, width: 2)),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.greenAccent, width: 2)),
                  ),
                  validator: validatePassword,
                  onSaved: (val) => _password = val,
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    prefix: Icon(Icons.email),
                    hintText: "Please email address",
                    labelText: "Email",
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 2)),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.greenAccent, width: 2)),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: InputDecoration(
                    prefix: Icon(Icons.settings),
                    hintText: "Settings",
                    labelText: "Set",
                    focusColor: Colors.pink,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                RaisedButton.icon(
                  onPressed: _validateEntrance,
                  icon: Icon(Icons.save),
                  label: Text("Save"),
                  color: Colors.orange,
                  disabledColor: Colors.grey,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  String validateEmail(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value))
      return 'Enter Valid Email';
    else
      return null;
  }

  String validatePassword(String value) {
    String pattern =
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[?!@#\$&*~]).{8,}$';
    RegExp regExp = new RegExp(pattern);
    if (regExp.hasMatch(value)) {
      return null;
    } else {
      return "Password is not valid.";
    }
  }

  void _validateEntrance() {
    if (formKey.currentState.validate()) {
      formKey.currentState.save();
      debugPrint(
          "Input mail : $_emailAddress Input pass : $_password  Input namesurname : $_nameSurname");
    } else {
      setState(() {
        autoValidate = true;
      });
    }
  }
}
