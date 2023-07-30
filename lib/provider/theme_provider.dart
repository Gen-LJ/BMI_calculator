


import 'package:bmi_calculator/storage/theme_preferences.dart';
import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier{
  late bool _isDark;
  late ThemePreferences _preferences;
   bool get isDark => _isDark;

ThemeProvider(){
  _isDark = false;
  _preferences = ThemePreferences();
  getPreferences();
}

set isDark(bool value) {
  _isDark = value;
  _preferences.saveBool(value);
  notifyListeners();
}

getPreferences() async {
  _isDark = await _preferences.getBool();
  notifyListeners();
}

}