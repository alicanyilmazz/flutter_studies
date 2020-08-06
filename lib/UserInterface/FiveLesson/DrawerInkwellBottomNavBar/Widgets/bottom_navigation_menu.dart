import 'package:flutter/material.dart';
import 'package:flutterapp/UserInterface/FiveLesson/DrawerInkwellBottomNavBar/Widgets/tabbartabbarview.dart';
import 'package:flutterapp/UserInterface/FiveLesson/DrawerInkwellBottomNavBar/manager.dart';

class BottomNavigationMenu extends StatefulWidget {
  @override
  _BottomNavigationMenuState createState() => _BottomNavigationMenuState();
}

class _BottomNavigationMenuState extends State<BottomNavigationMenu> {

  @override
  Widget build(BuildContext context) {
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
            if(index==3){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>TabbarSample())).then((value) {
                Manager.selectedMenuItem=0;
              });
            }
          });
        },
      ),
    );
  }
}
