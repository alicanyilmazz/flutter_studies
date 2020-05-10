import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:bot_toast/bot_toast.dart';

class HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: ÖNEMLİ :SilverAppBar kullanırken Scafold içerisindeki App Bar ile çakışmaması için iptal ettik.

    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          title: Icon(
            Icons.apps,
            size: 30,
            color: Colors.deepPurpleAccent,
          ),
          backgroundColor: Colors.orangeAccent,
          expandedHeight: 300,
          brightness: Brightness.light,
          floating: false,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
            background: Image.asset(
              "assets/images/corona.png",
              fit: BoxFit.contain,
            ),
            title: Text("This is a flexibleSpace"),
            centerTitle: true,
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.all(4),
          sliver: SliverList(
            delegate: SliverChildListDelegate(getChildren(propertyName: "SliverChildListDelegate")),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.all(4),
          sliver: SliverList(
            delegate:
                SliverChildBuilderDelegate(_createDynamic, childCount: 10),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.all(4),
          sliver: SliverFixedExtentList(
              delegate: SliverChildListDelegate(getChildren(propertyName: "SliverFixedExtentList.SliverChildListDelegate")), itemExtent: 300),
        ),

        SliverPadding(
          padding: EdgeInsets.all(4),
          sliver: SliverFixedExtentList(
              delegate: SliverChildBuilderDelegate(_createDynamic,childCount: 10), itemExtent: 50),
        ),
      ],
    );
  }


  List<Widget> getChildren({String propertyName="Name"}) {
    return [
      Container(
        height: 100,
        color: Colors.deepOrangeAccent,
        alignment: Alignment.center,
        child: Text(
          "$propertyName Member 1 ",
          style: TextStyle(
            fontSize: 18,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 100,
        color: Colors.teal,
        alignment: Alignment.center,
        child: Text(
          "$propertyName Member 2 ",
          style: TextStyle(
            fontSize: 18,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 100,
        color: Colors.lightBlueAccent,
        alignment: Alignment.center,
        child: Text(
          "$propertyName Member 3 ",
          style: TextStyle(
            fontSize: 18,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 100,
        color: Colors.pinkAccent,
        alignment: Alignment.center,
        child: Text(
          "$propertyName Member 4 ",
          style: TextStyle(
            fontSize: 18,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 100,
        color: Colors.greenAccent,
        alignment: Alignment.center,
        child: Text(
          "$propertyName Member 5 ",
          style: TextStyle(
            fontSize: 18,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 100,
        color: Colors.deepPurpleAccent,
        alignment: Alignment.center,
        child: Text(
          "$propertyName Member 6 ",
          style: TextStyle(
            fontSize: 18,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 100,
        color: Colors.deepPurple.shade400,
        alignment: Alignment.center,
        child: Text(
          "$propertyName Member 7 ",
          style: TextStyle(
            fontSize: 18,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 100,
        color: Colors.green.shade400,
        alignment: Alignment.center,
        child: Text(
          "$propertyName Member 8 ",
          style: TextStyle(
            fontSize: 18,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 100,
        color: Colors.pink.shade300,
        alignment: Alignment.center,
        child: Text(
          "$propertyName Member 9 ",
          style: TextStyle(
            fontSize: 18,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 100,
        color: Colors.deepOrangeAccent.shade400,
        alignment: Alignment.center,
        child: Text(
          "$propertyName Member 10 ",
          style: TextStyle(
            fontSize: 18,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    ];
  }

  Widget _createDynamic(BuildContext context, int index) {
    return Container(
      height: 100,
      color: randomColor(),
      alignment: Alignment.center,
      child: Text(
        "Dynamic Member $index ",
        style: TextStyle(
          fontSize: 18,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Color randomColor() {
    var rnd = new Random();
    return Color.fromARGB(
        rnd.nextInt(255), rnd.nextInt(255), rnd.nextInt(255), rnd.nextInt(255));
  }
}

/*
 SliverList(),
 SliverFixedExtentList(),
 SliverGrid(),
 SliverGrid.count(crossAxisCount: 2),//Buraya verdiğiniz sayı kadar bir satıra eleman yazar(bir satırda 2 grid eleman bulunur.)
 SliverGrid.extent(maxCrossAxisExtent: 200),//Benim grid elemanlarım max 200 genisliğe sahip olabilir.
*/
