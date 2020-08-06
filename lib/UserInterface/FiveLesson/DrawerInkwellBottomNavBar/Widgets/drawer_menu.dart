import 'package:flutter/material.dart';

class DrawerMenu extends StatefulWidget {
  @override
  _DrawerMenuState createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Alican Yılmaz"),
            accountEmail: Text("alicanyilmaz101@gmail.com"),
            currentAccountPicture: Image.network("https://avatars0.githubusercontent.com/u/49749125?s=460&u=7b20d2856f8768c3ab5b8c0ba2507a47d6d81b3a&v=4"),
            otherAccountsPictures: <Widget>[
              CircleAvatar(backgroundColor: Colors.deepOrange,child: Text("AY"),),
              CircleAvatar(backgroundColor: Colors.purple,child: Text("AY"),),
            ],
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                InkWell(
                  child: ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Main Page"),
                    trailing: Icon(Icons.chevron_right),
                  ),
                  onTap: (){},
                  onLongPress: (){},
                  splashColor: Colors.purple,
                ),
                ListTile(
                  leading: Icon(Icons.call),
                  title: Text("Call"),
                  trailing: Icon(Icons.chevron_right),
                ),
                ListTile(
                  leading: Icon(Icons.account_circle),
                  title: Text("Account"),
                  trailing: Icon(Icons.chevron_right),
                ),
                ListTile(
                  leading: Icon(Icons.security),
                  title: Text("Security"),
                  trailing: Icon(Icons.chevron_right),
                ),
                ListTile(
                  leading: Icon(Icons.add_a_photo),
                  title: Text("Add Photo"),
                  trailing: Icon(Icons.chevron_right),
                ),
                ListTile(
                  leading: Icon(Icons.add_shopping_cart),
                  title: Text("Shopping"),
                  trailing: Icon(Icons.chevron_right),
                ),
                ListTile(
                  leading: Icon(Icons.attach_money),
                  title: Text("Payment"),
                  trailing: Icon(Icons.chevron_right),
                ),
                ListTile(
                  leading: Icon(Icons.accessibility),
                  title: Text("Accessibility"),
                  trailing: Icon(Icons.chevron_right),
                ),
                ListTile(
                  leading: Icon(Icons.apps),
                  title: Text("About"),
                  trailing: Icon(Icons.chevron_right),
                ),
                ListTile(
                  leading: Icon(Icons.search),
                  title: Text("Search"),
                  trailing: Icon(Icons.chevron_right),
                ),
                ListTile(
                  leading: Icon(Icons.airport_shuttle),
                  title: Text("Shipping"),
                  trailing: Icon(Icons.chevron_right),
                ),
                AboutListTile(
                  applicationName: "About Us",
                  applicationIcon: Icon(Icons.info),
                  applicationVersion: "2.0",
                  icon: Icon(Icons.insert_drive_file),
                  child: Text("Who we are?"),
                  applicationLegalese: "This is a information",
                  aboutBoxChildren: <Widget>[
                    Text("We are founded in 1995 at Monacco City. We have a large team mates and approximately we produce mobile and web applications for 10 years.")
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
