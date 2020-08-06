import 'package:flutter/material.dart';
import 'package:flutterapp/UserInterface/FiveLesson/Entity.dart';

class MainPage extends StatefulWidget {

  Key k;
  MainPage(this.k):super(key:k);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  List<Data> dataList;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
   dataList=[
     Data("Lorem Ipsum is simply dummy text of the printing and typesetting","professor at Hampden-Sydney College in Virginia, looked up one of",false),
     Data("industry. Lorem Ipsum has been the industry's standard dummy","the more obscure Latin words, consectetur, from a Lorem Ipsum",false),
     Data("text ever since the 1500s, when an unknown printer took a galley","passage, and going through the cites of the word in classical",false),
     Data("of type and scrambled it to make a type specimen book. It has","literature, discovered the undoubtable source. Lorem Ipsum",false),
     Data("survived not only five centuries, but also the leap into electronic","comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum",false),
     Data("typesetting, remaining essentially unchanged. It was popularised in","et Malorum (The Extremes of Good and Evil) by Cicero, written in",false),
     Data("the 1960s with the release of Letraset sheets containing Lorem","45 BC. This book is a treatise on the theory of ethics, very popular",false),
     Data("Ipsum passages, and more recently with desktop publishing","during the Renaissance. The first line of Lorem Ipsum, Lorem",false),
     Data("Contrary to popular belief, Lorem Ipsum is not simply random text","The standard chunk of Lorem Ipsum used since the 1500s is",false),
     Data("It has roots in a piece of classical Latin literature from 45 BC,","reproduced below for those interested. Sections 1.10.32 and",false),
     Data("making it over 2000 years old. Richard McClintock, a Latin","reproduced in their exact original form, accompanied by English",false)
   ];
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return ExpansionTile(
        key: PageStorageKey("$index"),
        initiallyExpanded: false,
        title: Text(dataList[index].header),
        children: <Widget>[
          Container(
            color: index%2==0 ? Colors.red.shade200 : Colors.yellow.shade200,
            height: 100,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(dataList[index].content),
            ),
          ),
        ],
      );
    },itemCount: dataList.length-1,);
  }
}
