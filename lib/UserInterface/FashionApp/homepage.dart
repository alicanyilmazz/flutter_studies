import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/UserInterface/FashionApp/detail.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {

  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController=TabController(length: 4,vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(controller: _tabController,tabs: <Widget>[
          Tab(icon: Icon(Icons.more,color: Colors.grey,size: 16,),),
          Tab(icon: Icon(Icons.play_arrow,color: Colors.grey,size: 16,),),
          Tab(icon: Icon(Icons.navigation,color: Colors.grey,size: 16,),),
          Tab(icon: Icon(Icons.supervised_user_circle,color: Colors.grey,size: 16,),),
        ],),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Fashion Application",
          style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 22,
              fontWeight: FontWeight.normal,
              color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.photo_camera),
            onPressed: () {
              debugPrint("Icon clicked.");
            },
            color: Colors.grey,
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 10),
        children: <Widget>[
          //Top Profile List
          Container(
            //color: Colors.blue.shade300,
            height: 140,
            width: double.infinity,
            child: ListView(
              padding: EdgeInsets.all(15),
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                ListMembers('assets/images/model1.jpeg',
                    'assets/images/chanellogo.jpg'),
                SizedBox(
                  width: 30,
                ),
                ListMembers('assets/images/model2.jpeg',
                    'assets/images/louisvuitton.jpg'),
                SizedBox(
                  width: 30,
                ),
                ListMembers(
                    'assets/images/model3.jpeg', 'assets/images/chloelogo.png'),
                SizedBox(
                  width: 30,
                ),
                ListMembers('assets/images/model1.jpeg',
                    'assets/images/chanellogo.jpg'),
                SizedBox(
                  width: 30,
                ),
                ListMembers('assets/images/model2.jpeg',
                    'assets/images/louisvuitton.jpg'),
                SizedBox(
                  width: 30,
                ),
                ListMembers(
                    'assets/images/model3.jpeg', 'assets/images/chloelogo.png'),
                SizedBox(
                  width: 30,
                ),
              ],
            ),
          ),
          // Bottom Card /////////////////////////
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Material(
              borderRadius: BorderRadius.circular(16),
              elevation: 4,
              //color: Colors.blue.shade300,
              child: Container(
                height: 475,
                width: double.infinity,
                padding: EdgeInsets.all(16),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage('assets/images/model1.jpeg'),
                                fit: BoxFit.cover),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width - 160,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Daisy",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat',
                                ),
                              ),
                              Text(
                                "34 minutes ago",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat',
                                ),
                              ),
                            ],
                          ),
                        ),
                        Icon(Icons.more_vert),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "This official web site features a ribbed knit zipper jacket that is modern stylish.It look very temparament and is recommend to friends.",
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Montserrat',
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: <Widget>[
                        InkWell(
                          child: Hero(
                            child: Container(
                              height: 200,
                              width: (MediaQuery.of(context).size.width - 50) / 2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: DecorationImage(
                                    image: AssetImage(
                                      'assets/images/modelgrid1.jpeg',
                                    ),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            tag: 'assets/images/modelgrid1.jpeg',
                          ),
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Detail(imgPath: 'assets/images/modelgrid1.jpeg',)));
                          },
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            InkWell(
                              child: Hero(
                                child: Container(
                                  height: 95,
                                  width:
                                      (MediaQuery.of(context).size.width - 100) / 2,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: DecorationImage(
                                        image: AssetImage(
                                          'assets/images/modelgrid2.jpeg',
                                        ),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                                tag: 'assets/images/modelgrid2.jpeg',
                              ),
                              onTap: (){
                                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Detail(imgPath: 'assets/images/modelgrid2.jpeg',)));
                              },
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            InkWell(
                              child: Hero(
                                child: Container(
                                  height: 95,
                                  width:
                                      (MediaQuery.of(context).size.width - 100) / 2,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: DecorationImage(
                                        image: AssetImage(
                                          'assets/images/modelgrid3.jpeg',
                                        ),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                                tag: 'assets/images/modelgrid3.jpeg',
                              ),
                              onTap: (){
                                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Detail(imgPath: 'assets/images/modelgrid3.jpeg',)));
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          height: 25,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.brown.withOpacity(0.2),
                          ),
                          child: Center(
                            child: Text(
                              "#Louis Vuitton",
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 10,
                                color: Colors.brown,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          height: 25,
                          width: 75,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.brown.withOpacity(0.2),
                          ),
                          child: Center(
                            child: Text(
                              "#Chloe",
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 10,
                                color: Colors.brown,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Divider(),
                    SizedBox(height: 20,),
                    Row(
                      children: <Widget>[
                        Icon(Icons.reply,color: Colors.brown.withOpacity(0.2),),
                        SizedBox(width: 5,),
                        Text("1.7k",style: TextStyle(fontFamily: 'Montserrat',),),
                        SizedBox(width: 25,),
                        Icon(Icons.comment,color: Colors.brown.withOpacity(0.2),),
                        SizedBox(width: 5,),
                        Text("325",style: TextStyle(fontFamily: 'Montserrat',),),
                        Container(
                          width: MediaQuery.of(context).size.width-200,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                            Icon(Icons.favorite,color: Colors.red.withOpacity(0.9),),
                            SizedBox(width: 5,),
                            Text("325",style: TextStyle(fontFamily: 'Montserrat',),),
                          ],),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget ListMembers(String imagePath, String logoPath) {
    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(38),
                image: DecorationImage(
                    image: AssetImage(imagePath), fit: BoxFit.cover),
              ),
            ),
            Positioned(
              top: 50,
              left: 50,
              child: Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                      image: AssetImage(logoPath), fit: BoxFit.cover),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 20,
          width: 75,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.brown,
          ),
          child: Center(
            child: Text(
              "Follow",
              style: TextStyle(
                color: Colors.white54,
                fontFamily: 'Montserrat',
                fontSize: 14,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
