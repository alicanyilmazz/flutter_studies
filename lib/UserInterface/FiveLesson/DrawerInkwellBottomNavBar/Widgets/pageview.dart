import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageViewSample extends StatefulWidget {
  @override
  _PageViewSampleState createState() => _PageViewSampleState();
}

class _PageViewSampleState extends State<PageViewSample> {
  var myController = PageController(initialPage: 0, keepPage: true, viewportFraction: 1);// Keep page ile State tutulmaz PageStoreKey ile tutmamız lazım Keep Page in görevi bu sayfa Ram den silinsin mi silinmesin mi?Az sayıda ise Bellekte tutmak daha tasarruflu olabilir.
  bool horizontal=true;
  bool pageSnapping=true;
  bool reverserOrder=false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: PageView(
            scrollDirection: horizontal==true ? Axis.horizontal : Axis.vertical,
            reverse: false,
            controller: myController,
            pageSnapping: pageSnapping,
            onPageChanged: (index) {
              debugPrint("page change getting index $index");
            },
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 300,
                color: Colors.indigo.shade300,
                child: Center(
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Page 0",
                        style: TextStyle(fontSize: 30),
                      ),
                      RaisedButton(
                        onPressed: (){
                          //myController.jumpToPage(2);
                          myController.jumpTo(400);
                        },
                        child: Text("Go!"),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 200,
                color: Colors.amberAccent,
                child: Center(
                  child: Text(
                    "Page 1",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 200,
                color: Colors.teal,
                child: Center(
                  child: Text(
                    "Page 2",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Text("Work horizontal axis"),
                      Checkbox(
                        value: horizontal,
                        onChanged: (val){
                          setState(() {
                            horizontal=val;
                          });
                        },
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Text("Page Snapping"),
                      Checkbox(
                        value: pageSnapping,
                        onChanged: (val2){
                          setState(() {
                           pageSnapping=val2;
                          });
                        },
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Text("Reverse Order"),
                      Checkbox(
                        value: reverserOrder,
                        onChanged: (val3){
                          setState(() {
                            reverserOrder=val3;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
            width: double.infinity,
            height: 200,
            color: Colors.blueGrey,
          ),
        ),
      ],
    );
  }
}
