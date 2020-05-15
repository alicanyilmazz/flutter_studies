class Horoscope {
  String _horoscopeName;
  String _horoscopeDate;
  String _horoscopeDetail;
  String _littleImage;
  String _bigImage;

  Horoscope(this._horoscopeName, this._horoscopeDate, this._horoscopeDetail,
      this._littleImage, this._bigImage);

  String get bigImage => _bigImage;

  set bigImage(String value) {
    _bigImage = value;
  }

  String get littleImage => _littleImage;

  set littleImage(String value) {
    _littleImage = value;
  }

  String get horoscopeDetail => _horoscopeDetail;

  set horoscopeDetail(String value) {
    _horoscopeDetail = value;
  }

  String get horoscopeDate => _horoscopeDate;

  set horoscopeDate(String value) {
    _horoscopeDate = value;
  }

  String get horoscopeName => _horoscopeName;

  set horoscopeName(String value) {
    _horoscopeName = value;
  }


}
