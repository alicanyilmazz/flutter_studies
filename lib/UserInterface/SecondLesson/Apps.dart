import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Apps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title:
      "Material App Title", // you can show application logo when application minimized.
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        accentColor: Colors.pinkAccent,
        textTheme: TextTheme(
          display1: TextStyle(fontSize: 12),
        ),
      ),
      home: MyHomePages(
        title: "Constructor",
      ),
    );
  }
}

class MyHomePages extends StatefulWidget {
  final String title;
  int _counter = 0;

  MyHomePages({this.title}){
    debugPrint("MyHomePages constructure called.");
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    debugPrint("CreateState called.");
    return MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePages> {

  MyHomePageState(){
    debugPrint("MyHomePageState constructure called.");
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    debugPrint("Build called.");
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.red.shade200,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            increaseCounter();
          });
        },
        child: Icon(Icons.add),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: increaseCounter,
              child: Icon(Icons.add_circle_outline),
              color: Colors.cyan.shade200,
            ),
            Text(
              "${widget._counter}",
              style: Theme.of(context).textTheme.display2.copyWith(
                color: widget._counter<0? Colors.pink : Colors.cyan,
              ),
            ),
            RaisedButton(
              onPressed: decreaseCounter,
              child: Icon(Icons.remove_circle_outline),
              color: Colors.pinkAccent.shade200,
            ),
          ],
        ),
      ),
    );
  }

  void increaseCounter() {
    setState(() {
      widget._counter++;
    });
  }
  void decreaseCounter() {
    setState(() {
      widget._counter--;
    });
  }
}
