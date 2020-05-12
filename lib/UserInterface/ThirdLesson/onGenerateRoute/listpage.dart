import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "List Page App Bar",
          style: TextStyle(
            fontSize: 24.0,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.red.shade200,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint("FAB TIKLANDI");
        },
        backgroundColor: Colors.blue,
        child: Icon(
          Icons.access_alarm,
          size: 24.0,
          color: Colors.white,
        ),
      ),
      body: Container(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, "/detail/$index");
              },
              child: Container(
                child: ListTile(
                  leading: Icon(
                    Icons.person_outline,
                    color: index % 2 == 0 ? Colors.cyan : Colors.pink,
                  ),
                  title: Text("$index th title"),
                  subtitle: Text("$index th index subtitle."),
                  trailing: Icon(
                    Icons.add,
                    color: Colors.pink,
                  ),
                ),
                color: randomColor(),
              ),
            );
          },
          itemCount: 60,
        ),
      ),
    );
  }

  Color randomColor() {
    var rnd = new Random();
    return Color.fromARGB(
        rnd.nextInt(50), rnd.nextInt(255), rnd.nextInt(255), rnd.nextInt(255));
  }
}

class ListDetail extends StatelessWidget {
  int clickedIndex=0;

  ListDetail(this.clickedIndex);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "List Detail Page App Bar",
          style: TextStyle(
            fontSize: 24.0,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.red.shade200,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint("FAB TIKLANDI");
        },
        backgroundColor: Colors.blue,
        child: Icon(
          Icons.access_alarm,
          size: 24.0,
          color: Colors.white,
        ),
      ),
      body: Center(
        child: Card(
          child: Text(
            "Detail Page ID : $clickedIndex",
            style: TextStyle(color: Colors.white,fontSize: 24),
          ),
          color: Colors.pink.shade200,
        ),
      ),
    );
  }
}
