import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StepperWidget extends StatefulWidget {
  @override
  _StepperWidgetState createState() => _StepperWidgetState();
}

class _StepperWidgetState extends State<StepperWidget> {
  int _activeStep = 0;
  String _name, _mail, _password;
  List<Step> _everySteps;
  bool _error = false;
  var key0 = GlobalKey<FormFieldState>();
  var key1 = GlobalKey<FormFieldState>();
  var key2 = GlobalKey<FormFieldState>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _everySteps = _allSteps();
    return Scaffold(
      appBar: AppBar(
        title: Text("Stepper Widget"),
        backgroundColor: Colors.orange,
      ),
      body: SingleChildScrollView(
        child: Stepper(
          controlsBuilder: (BuildContext context,{VoidCallback onStepContinue,VoidCallback onStepCancel}){
            return Row(
              children: <Widget>[
                RaisedButton(
                  color: Colors.greenAccent,
                  onPressed: onStepContinue,
                  child: const Text("Forward!"),
                ),
                SizedBox(width: 30,),
                RaisedButton(
                  color: Colors.pink,
                  onPressed: onStepCancel,
                  child: const Text("Backward!"),
                ),
              ],
            );
          },
          steps: _everySteps,
          currentStep: _activeStep,
          /*onStepTapped: (clickedStep) {   //disabled this property
            setState(() {
              _activeStep = clickedStep;
            });
          },*/
          onStepContinue: () {
            setState(() {
              _inputValidator();
            });
          },
          onStepCancel: () {
            setState(() {
              if (_activeStep > 0) {
                _activeStep--;
              } else {
                _activeStep = 0;
              }
            });
          },
        ),
      ),
    );
  }

  List<Step> _allSteps() {
    List<Step> steps = [
      Step(
        title: Text("Username Title"),
        subtitle: Text("Username Subtitle"),
        state: _setState(0),
        isActive: true,
        content: TextFormField(
          key: key0,
          decoration: InputDecoration(
            labelText: "Username",
            hintText: "username",
            border: OutlineInputBorder(),
          ),
          validator: (values) {
            if (values.length < 6) {
              return "Name must be at least 6 character.";
            } else {
              return null;
            }
          },
          onSaved: (values) {
            _name = values;
          },
        ),
      ),
      Step(
        title: Text("Mail Title"),
        subtitle: Text("Mail Subtitle"),
        state: _setState(1),
        isActive: true,
        content: TextFormField(
          key: key1,
          decoration: InputDecoration(
            labelText: "Mail",
            hintText: "mail",
            border: OutlineInputBorder(),
          ),
          validator: (values) {
            if (values.length < 6 || !values.contains("@")) {
              return "Email must be at least 6 character.";
            } else {
              return null;
            }
          },
          onSaved: (values) {
            _mail = values;
          },
        ),
      ),
      Step(
        title: Text("Password Title"),
        subtitle: Text("Password Subtitle"),
        state: _setState(2),
        isActive: true,
        content: TextFormField(
          key: key2,
          decoration: InputDecoration(
            labelText: "Password",
            hintText: "password",
            border: OutlineInputBorder(),
          ),
          validator: (values) {
            if (values.length < 6) {
              return "Password must be at least 6 character.";
            } else {
              return null;
            }
          },
          onSaved: (values) {
            _password = values;
          },
        ),
      ),
    ];

    return steps;
  }

  StepState _setState(int currentState) {
    if (currentState == _activeStep) {
      if (_error) {
        return StepState.error;
      } else {
        return StepState.editing;
      }
    } else {
      return StepState.complete;
    }
  }

  void _inputValidator() {
    switch (_activeStep) {
      case 0:
        if (key0.currentState.validate()) {
          key0.currentState.save();
          _error = false;
          _activeStep = 1;
        } else {
          _error = true;
        }
        break;
      case 1:
        if (key1.currentState.validate()) {
          key1.currentState.save();
          _error = false;
          _activeStep = 2;
        } else {
          _error = true;
        }
        break;
      case 2:
        if (key2.currentState.validate()) {
          key2.currentState.save();
          _error = false;
          _activeStep = 2;
          processCompleted();
        } else {
          _error = true;
        }
        break;
    }
  }

  void processCompleted(){
    debugPrint("taked data : name=>$_name mail=>$_mail password:$_password");
  }
}
