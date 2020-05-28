import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CheckBoxListTiles extends StatefulWidget {
  @override
  _CheckBoxListTileState createState() => _CheckBoxListTileState();
}

class _CheckBoxListTileState extends State<CheckBoxListTiles> {
  bool checkboxState = false;
  String cityName = "";
  bool switchState = false;
  double sliderValue = 0;
  String selectedColor = "Red";
  List<String> _cities = ["Berlin", "NewYork", "SanFrancisco", "Los Angeles"];
  String selectedCity = "Berlin";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add_circle),
      ),
      appBar: AppBar(
        title: Text("CheckBoxListTile"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: <Widget>[
            CheckboxListTile(
              value: checkboxState,
              onChanged: (status) {
                setState(() {
                  checkboxState = status;
                });
              },
              activeColor: Colors.pink,
              title: Text(
                "Checkbox Title",
                style: TextStyle(color: Colors.orange),
              ),
              subtitle: Text(
                "Checkbox Subtitle",
                style: TextStyle(color: Colors.blueGrey),
              ),
              secondary: Icon(
                Icons.add,
                color: Colors.teal,
              ),
              selected: false,
            ),
            RadioListTile<String>(
              value: "Berlin",
              groupValue: cityName,
              onChanged: (val) {
                setState(() {
                  cityName = val;
                  debugPrint("Selected value is : $cityName");
                });
              },
              title: Text(
                "Berlin",
              ),
              subtitle: Text(
                "Subtitle",
              ),
              secondary: Icon(
                Icons.check,
              ),
              activeColor: Colors.pink,
            ),
            RadioListTile<String>(
              value: "Amsterdam",
              groupValue: cityName,
              onChanged: (val) {
                setState(() {
                  cityName = val;
                  debugPrint("Selected value is : $cityName");
                });
              },
              title: Text(
                "Amsterdam",
              ),
              subtitle: Text(
                "Subtitle",
              ),
              secondary: Icon(
                Icons.check,
              ),
            ),
            RadioListTile<String>(
              value: "Vancouver",
              groupValue: cityName,
              onChanged: (val) {
                setState(() {
                  cityName = val;
                  debugPrint("Selected value is : $cityName");
                });
              },
              title: Text(
                "Vancouver",
              ),
              subtitle: Text(
                "Subtitle",
              ),
              secondary: Icon(
                Icons.check,
              ),
              activeColor: Colors.teal,
            ),
            SwitchListTile(
              value: switchState,
              onChanged: (val) {
                setState(() {
                  switchState = val;
                  debugPrint("Last Status : $switchState");
                });
              },
              title: Text("Switch title"),
              subtitle: Text("Subtitle"),
              secondary: switchState == true
                  ? Icon(
                      Icons.check,
                      color: Colors.green,
                    )
                  : Icon(
                      Icons.backspace,
                      color: Colors.red,
                    ),
              activeColor: Colors.teal,
            ),
            Text("Degree of your work out frequency."),
            Slider(
              value: sliderValue,
              onChanged: (val) {
                setState(() {
                  sliderValue = val;
                });
              },
              max: 20,
              min: 0,
              activeColor: Colors.pink,
              inactiveColor: Colors.blue,
              label: sliderValue.toString(),
              divisions: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: DropdownButton<String>(
                items: [
                  DropdownMenuItem<String>(
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 24,
                          height: 24,
                          color: Colors.red,
                          margin: EdgeInsets.only(right: 10),
                        ),
                        Icon(Icons.check),
                        Text("Red")
                      ],
                    ),
                    value: "Red",
                  ),
                  DropdownMenuItem<String>(
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 24,
                          height: 24,
                          color: Colors.blue,
                          margin: EdgeInsets.only(right: 10),
                        ),
                        Icon(Icons.check),
                        Text("Blue")
                      ],
                    ),
                    value: "Blue",
                  ),
                  DropdownMenuItem<String>(
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 24,
                          height: 24,
                          color: Colors.green,
                          margin: EdgeInsets.only(right: 10),
                        ),
                        Icon(Icons.check),
                        Text("Green")
                      ],
                    ),
                    value: "Green",
                  ),
                ],
                onChanged: (String selectedItem) {
                  setState(() {
                    selectedColor = selectedItem;
                  });
                },
                hint: Text("Choose Your"),
                value: selectedColor,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: DropdownButton<String>(
                items: _cities.map((currentCity) {
                  return DropdownMenuItem<String>(
                    child: Text(currentCity),
                    value: currentCity,
                  );
                }).toList(),
                onChanged: (val) {
                  setState(() {
                    selectedCity = val;
                  });
                },
                value: selectedCity,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
