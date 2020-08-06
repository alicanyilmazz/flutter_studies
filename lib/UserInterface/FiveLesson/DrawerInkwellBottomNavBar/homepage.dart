import 'package:flutter/material.dart';
import 'package:flutterapp/UserInterface/FiveLesson/DrawerInkwellBottomNavBar/Widgets/tabbartabbarview.dart';
import 'file:///S:/AppData/FlutterProjects/flutter_app/lib/UserInterface/FiveLesson/DrawerInkwellBottomNavBar/Widgets/bottom_navigation_menu.dart';
import 'file:///S:/AppData/FlutterProjects/flutter_app/lib/UserInterface/FiveLesson/DrawerInkwellBottomNavBar/Widgets/drawer_menu.dart';
import 'package:flutterapp/UserInterface/FiveLesson/DrawerInkwellBottomNavBar/mainpage.dart';
import 'package:flutterapp/UserInterface/FiveLesson/DrawerInkwellBottomNavBar/manager.dart';
import 'file:///S:/AppData/FlutterProjects/flutter_app/lib/UserInterface/FiveLesson/DrawerInkwellBottomNavBar/Widgets/pageview.dart';
import 'package:flutterapp/UserInterface/FiveLesson/DrawerInkwellBottomNavBar/searchpage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var keyMainPage=PageStorageKey("key_main");
  var keySearchPage=PageStorageKey("key_search");

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    MainPage _mainpage=MainPage(keyMainPage);
    SearchPage _searchpage=SearchPage(keySearchPage);
    PageViewSample pageViewSample=PageViewSample();
    TabbarSample tabbarSample=TabbarSample();
    Manager.allPages=[_mainpage,_searchpage,pageViewSample,tabbarSample];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerMenu(),
      key: PageStorageKey(""),
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text("Drawer and Inkwell"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      body: Manager.selectedMenuItem <= Manager.allPages.length-1 ? Manager.allPages[Manager.selectedMenuItem] : Manager.allPages[0],
      bottomNavigationBar: bottomNavMenu(),
    );
  }

  Theme bottomNavMenu(){

    return Theme(
      data: ThemeData(
        canvasColor: Colors.teal,
        primaryColor: Colors.amber,
      ),
      child: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            activeIcon: Icon(Icons.apps),
            title: Text(
              "Main Page",
            ),
            backgroundColor: Colors.deepOrange.shade300,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
            title: Text(
              "Search",
            ),
            backgroundColor: Colors.lightBlue.shade300,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add,
            ),
            title: Text(
              "Add",
            ),
            backgroundColor: Colors.pink.shade300,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_box,
            ),
            title: Text(
              "Account",
            ),
            backgroundColor: Colors.deepPurple.shade300,
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: Manager.selectedMenuItem,
        fixedColor: Colors.white54,
        onTap: (int index){
          setState(() {
            Manager.selectedMenuItem=index;
          });
        },
      ),
    );
  }
}


