import 'package:flutterapp/UserInterface/horoscopeapp/models/horoscope.dart';

import 'HoroscopeData.dart';

List<Horoscope> getHoroscopeData() {
  List<Horoscope> horoscopes = [];
  String littleImage, bigImage;
  Horoscope horoscope;
  for (int i = 0; i < 12; i++) {
    littleImage = Strings.HOROSCOPE_NAME[i].toLowerCase() + "${i + 1}.png";
    bigImage =
        Strings.HOROSCOPE_NAME[i].toLowerCase() + "_big" + "${i + 1}.png";
    horoscope = Horoscope(
        Strings.HOROSCOPE_NAME[i],
        Strings.HOROSCOPE_DATE[i],
        Strings.HOROSCOPE_PROPERTIES[i],
        littleImage,
        bigImage);
    horoscopes.add(horoscope);
  }

  return horoscopes;
}