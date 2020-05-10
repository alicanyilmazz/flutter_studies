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
          title: Icon(Icons.apps,size: 30,color: Colors.deepPurpleAccent,),
          backgroundColor: Colors.orangeAccent,
          expandedHeight: 300,
          brightness: Brightness.light,
          floating: false,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
            background:Image.asset("assets/images/corona.png",fit: BoxFit.contain,),
            title: Text("This is a flexibleSpace"),
            centerTitle: true,
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate(getChildren()),
        ),
      ],
    );
  }

  List<Widget> getChildren() {
    return [
      Container(
        height: 100,
        color: Colors.deepOrangeAccent,
        alignment: Alignment.center,
        child: Text("Fixed List Member 1 ",style: TextStyle(fontSize: 18,),textAlign: TextAlign.center,),
      ),
      Container(
        height: 100,
        color: Colors.teal,
        alignment: Alignment.center,
        child: Text("Fixed List Member 2 ",style: TextStyle(fontSize: 18,),textAlign: TextAlign.center,),
      ),
      Container(
        height: 100,
        color: Colors.lightBlueAccent,
        alignment: Alignment.center,
        child: Text("Fixed List Member 3 ",style: TextStyle(fontSize: 18,),textAlign: TextAlign.center,),
      ),
      Container(
        height: 100,
        color: Colors.pinkAccent,
        alignment: Alignment.center,
        child: Text("Fixed List Member 4 ",style: TextStyle(fontSize: 18,),textAlign: TextAlign.center,),
      ),
      Container(
        height: 100,
        color: Colors.greenAccent,
        alignment: Alignment.center,
        child: Text("Fixed List Member 5 ",style: TextStyle(fontSize: 18,),textAlign: TextAlign.center,),
      ),
      Container(
        height: 100,
        color: Colors.deepPurpleAccent,
        alignment: Alignment.center,
        child: Text("Fixed List Member 6 ",style: TextStyle(fontSize: 18,),textAlign: TextAlign.center,),
      ),
      Container(
        height: 100,
        color: Colors.deepPurple.shade400,
        alignment: Alignment.center,
        child: Text("Fixed List Member 7 ",style: TextStyle(fontSize: 18,),textAlign: TextAlign.center,),
      ),
      Container(
        height: 100,
        color: Colors.green.shade400,
        alignment: Alignment.center,
        child: Text("Fixed List Member 8 ",style: TextStyle(fontSize: 18,),textAlign: TextAlign.center,),
      ),
      Container(
        height: 100,
        color: Colors.pink.shade300,
        alignment: Alignment.center,
        child: Text("Fixed List Member 9 ",style: TextStyle(fontSize: 18,),textAlign: TextAlign.center,),
      ),
      Container(
        height: 100,
        color: Colors.deepOrangeAccent.shade400,
        alignment: Alignment.center,
        child: Text("Fixed List Member 10 ",style: TextStyle(fontSize: 18,),textAlign: TextAlign.center,),
      ),

    ];
  }
}

/*
 SliverList(),
 SliverFixedExtentList(),
 SliverGrid(),
 SliverGrid.count(crossAxisCount: 2),//Buraya verdiğiniz sayı kadar bir satıra eleman yazar(bir satırda 2 grid eleman bulunur.)
 SliverGrid.extent(maxCrossAxisExtent: 200),//Benim grid elemanlarım max 200 genisliğe sahip olabilir.
*/
