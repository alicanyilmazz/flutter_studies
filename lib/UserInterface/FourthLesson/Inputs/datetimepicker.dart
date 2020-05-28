import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';

class DateAndTimePicker extends StatefulWidget {
  @override
  _DateAndTimePickerState createState() => _DateAndTimePickerState();
}

class _DateAndTimePickerState extends State<DateAndTimePicker> {
  @override
  Widget build(BuildContext context) {
    DateTime currentlyTime = DateTime.now();
    DateTime threeMonthsAgo = DateTime(2020, currentlyTime.month - 5);
    DateTime twentyDaysLater = DateTime(2020, currentlyTime.month + 5);
    DateTime _selectedDate;
    TimeOfDay currentTime=TimeOfDay.now();

    return Scaffold(
      appBar: AppBar(
        title: Text("Date and time picker"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                showDatePicker(
                        context: context,
                        initialDate: currentlyTime,
                        firstDate: threeMonthsAgo,
                        lastDate: twentyDaysLater)
                    .then((selectedDate) {
                  _selectedDate = selectedDate;
                  debugPrint(_selectedDate.toString());
                  debugPrint(_selectedDate.toIso8601String());
                  debugPrint(_selectedDate.millisecondsSinceEpoch.toString());
                  debugPrint(_selectedDate.toUtc().toIso8601String());
                  debugPrint(_selectedDate
                      .add(Duration(
                          days: 20,
                          hours: 2,
                          minutes: 20,
                          seconds: 30,
                          milliseconds: 90,
                          microseconds: 30))
                      .toString());
                  var newDate =
                      DateTime.parse(_selectedDate.toUtc().toIso8601String());
                  debugPrint(newDate.toString());
                  debugPrint(formatDate(_selectedDate,
                      [yyyy, '-', mm, '-', dd])); //Using dart package
                });
              },
              color: Colors.blue,
              child: Text("Choose Date"),
            ),
            RaisedButton(
              onPressed: () {
                showTimePicker(context: context, initialTime: currentTime).then((value){
                  debugPrint("Selected Time is ${value.format(context)}");
                  debugPrint(value.hour.toString()+' : '+value.minute.toString());
                });
              },
              color: Colors.red,
              child: Text("Take Date"),
            ),
          ],
        ),
      ),
    );
  }
}
