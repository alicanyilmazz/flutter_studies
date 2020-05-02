import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBody extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: Using For Application Body
    return Column(
      children: <Widget>[
        Text(
          "Image and Button types.",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(5),
                  color: Colors.red.shade100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Image.asset("assets/images/corona.png"),
                      Text("Asset Image"),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(5),
                  color: Colors.red.shade100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      FadeInImage.assetNetwork(
                          placeholder: "assets/images/loading.gif",
                          image:
                          "https://www.wannart.com/wp-content/uploads/2019/12/the-witcher-netflix-series-will-show-unknown-yennefer-aspects-for-fans-of-the-game.jpg"),
                      Text("Network Image"),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(5),
                  color: Colors.red.shade100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(
                        child: Placeholder(
                          color: Colors.red,
                          strokeWidth: 2.0,
                        ),
                      ),
                      Text("Circle Avatar"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(30, 50, 30, 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              RaisedButton(
                child: Text("go!"),
                onPressed: fun,
                textTheme: ButtonTextTheme.normal,
                textColor: Colors.pink,
                color: Colors.brown.shade200,
                disabledColor: Colors.red,
              ),
              RaisedButton(
                child: Text("went!"),
                onPressed: () {
                  debugPrint("went!");
                },
                textTheme: ButtonTextTheme.normal,
                textColor: Colors.pink.shade500,
                color: Colors.yellow.shade200,
                disabledColor: Colors.red,
              ),
              IconButton(
                icon: Icon(Icons.beenhere),
                onPressed: fun,
                color: Colors.pink.shade300,
                splashColor: Colors.yellow.shade300,
              ),
            ],
          ),
        ),
      ],
    );
  }

}


void fun() {
  debugPrint("Go!");
}