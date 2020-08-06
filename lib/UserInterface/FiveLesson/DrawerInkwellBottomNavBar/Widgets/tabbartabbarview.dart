import 'package:flutter/material.dart';

class TabbarSample extends StatefulWidget {
  @override
  _TabbarSampleState createState() => _TabbarSampleState();
}

class _TabbarSampleState extends State<TabbarSample>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Using Tab"),
        bottom: buildTabBar(),
      ),
      bottomNavigationBar: bottomTabBar(),
      body: TabBarView(
        children: <Widget>[
          Container(
            color: Colors.teal.shade200,
            child: Center(child: Text("TAB 1",style: TextStyle(fontSize: 40),),),
          ),
          Container(
            color: Colors.green.shade200,
            child: Center(child: Text("TAB 2",style: TextStyle(fontSize: 40),),),
          ),
          Container(
            color: Colors.red.shade200,
            child: Center(child: Text("TAB 3",style: TextStyle(fontSize: 40),),),
          ),
        ],
        controller: tabController,
      ),
    );
  }

  TabBar buildTabBar() {
    return TabBar(
      tabs: [
        Tab(
          icon: Icon(Icons.add),
          text: "Tab 1",
        ),
        Tab(
          icon: Icon(Icons.accessibility),
          text: "Tab 2",
        ),
        Tab(
          icon: Icon(Icons.done_outline),
          text: "Tab 3",
        ),
      ],
      controller: tabController,
    );
  }

  Widget bottomTabBar() {
    return Container(
      color: Colors.red.shade400,
      child: TabBar(
        tabs: [
          Tab(
            icon: Icon(Icons.add),
            text: "Tab 1",
          ),
          Tab(
            icon: Icon(Icons.accessibility),
            text: "Tab 2",
          ),
          Tab(
            icon: Icon(Icons.done_outline),
            text: "Tab 3",
          ),
        ],
        controller: tabController,
      ),
    );
  }
}
