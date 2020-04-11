import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
class AppStateProvider with ChangeNotifier{
  bool _isDarkModeOn = false;
  String _mapStyle;

//  dark mode getter
  bool get isDarkMode => _isDarkModeOn;
  void updateTheme(bool isDarkModeOn){
    _isDarkModeOn = isDarkModeOn;
    notifyListeners();
  }
   getDarkMapStyle () {
     rootBundle.loadString('assets/mapStyle/dark_map_style.json').then((string) {
     _mapStyle = string;
    });
     notifyListeners();
     return _mapStyle;
  }
  getLightMapStyle () {
    print("light called");
    rootBundle.loadString('assets/mapStyle/light_map_style.json').then((string) {
      _mapStyle = string;
    });
    print("light done");
    notifyListeners();
    return _mapStyle;
  }
}