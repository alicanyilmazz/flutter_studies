import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/UserInterface/horoscopeapp/utilities/gethoroscopedata.dart';

import 'models/horoscope.dart';

class HomePageBody extends StatelessWidget {
  List<Horoscope> horoscopes;

  @override
  Widget build(BuildContext context) {
    horoscopes = getHoroscopeData();

    return ListView.builder(
      itemBuilder: (context, index) {
        Horoscope currentlyhoroscope = horoscopes[index];
        return Card(
          elevation: 4,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              onTap: () => Navigator.of(context)
                  .pushNamed('/horoscopedetail', arguments: index.toString()),
              leading: Image.asset(
                "assets/images/" + currentlyhoroscope.littleImage,
                width: 64,
                height: 64,
              ),
              title: Text(
                currentlyhoroscope.horoscopeName,
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                    color: Colors.pink.shade500),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Text(
                  currentlyhoroscope.horoscopeDate,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.blue.shade500,
                  ),
                ),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.purple,
              ),
            ),
          ),
        );
      },
      itemCount: horoscopes.length,
    );
  }
}
