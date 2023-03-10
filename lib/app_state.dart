import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<String> _urlimages = [];
  List<String> get urlimages => _urlimages;
  set urlimages(List<String> _value) {
    _urlimages = _value;
  }

  void addToUrlimages(String _value) {
    _urlimages.add(_value);
  }

  void removeFromUrlimages(String _value) {
    _urlimages.remove(_value);
  }

  void removeAtIndexFromUrlimages(int _index) {
    _urlimages.removeAt(_index);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
