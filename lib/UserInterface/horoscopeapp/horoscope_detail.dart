import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/UserInterface/horoscopeapp/utilities/HoroscopeData.dart';
import 'package:palette_generator/palette_generator.dart';

class HoroscopeDetail extends StatefulWidget {
  final String data;
  HoroscopeDetail({Key key, @required this.data}) : super(key: key);

  @override
  _HoroscopeDetailState createState() => _HoroscopeDetailState();
}

class _HoroscopeDetailState extends State<HoroscopeDetail> {
  PaletteGenerator palettegenerator;
  Color dominant_color;

  @override
  void initState() {
    super.initState();
    colorgenerator();
  }

  @override
  Widget build(BuildContext context) {

    colorgenerator();
    return Scaffold(
      body: CustomScrollView(
        primary: false,
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            primary: true,
            backgroundColor:
                dominant_color != null ? dominant_color : Colors.pink,
            centerTitle: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/images/" +
                    Strings.HOROSCOPE_NAME[int.parse(widget.data)]
                        .toLowerCase() +
                    "_big${int.parse(widget.data) + 1}.png",
                fit: BoxFit.cover,
              ),
            ),
            title: Text(
              Strings.HOROSCOPE_NAME[int.parse(widget.data)],
              style: TextStyle(color: Colors.white),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: SingleChildScrollView(
                child: Text(
                  Strings.HOROSCOPE_PROPERTIES[int.parse(widget.data)],
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  void colorgenerator() {
     Future<PaletteGenerator> future_palettegenerator =
        PaletteGenerator.fromImageProvider(AssetImage("assets/images/" +
            Strings.HOROSCOPE_NAME[int.parse(widget.data)].toLowerCase() +
            "_big${int.parse(widget.data) + 1}.png"));
    future_palettegenerator.then((value) {
      palettegenerator = value;
      setState(() {
        dominant_color = palettegenerator.dominantColor.color;
      });
    });
  }
}
