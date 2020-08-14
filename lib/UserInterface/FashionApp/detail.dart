import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  var imgPath;

  Detail({this.imgPath});

  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Hero(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(widget.imgPath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            tag: widget.imgPath,
          ),
          Positioned(
            left: 15,
            right: 15,
            bottom: 15,
            child: Material(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                height: 250,
                width: MediaQuery.of(context).size.width - 30,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.grey),
                              image: DecorationImage(
                                  image: AssetImage('assets/images/dress.jpg'),
                                  fit: BoxFit.contain),
                            ),
                          ),
                        ),
                        Column(
                          children: <Widget>[
                            Text(
                              "LAMINATED",
                              style: TextStyle(
                                  fontSize: 22,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Louis Vuitton",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.normal,
                                  color: Colors.grey),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 30,
                              width: MediaQuery.of(context).size.width - 170,
                              child: Text(
                                "One button V-neck sling long-sleved waist female stitching dress",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.normal,
                                    color: Colors.grey),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Divider(),
                    Padding(
                      padding: EdgeInsets.only(left: 15, top: 10, bottom: 2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "\$6500",
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 22,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              right: 10,
                            ),
                            child: FloatingActionButton(
                              child: Center(
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  size: 14,
                                ),
                              ),
                              backgroundColor: Colors.brown,
                              foregroundColor: Colors.white,
                              mini: true,
                              onPressed: () {
                                debugPrint("clicked!");
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height/2,
            left: 50,
            child: Container(
              height: 40,
              width: 130,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.4),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Center(child: Text("LAMINATED",style: TextStyle(fontFamily: 'Montserrat',color: Colors.white,fontWeight: FontWeight.bold),),),
                  Icon(Icons.arrow_forward_ios,color: Colors.white,size: 16,),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
