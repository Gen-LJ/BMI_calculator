import 'package:shared_preferences/shared_preferences.dart';

class ThemePreferences{
  static const themeKey = 'themeKey';
   saveBool(bool value) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setBool(themeKey, value);
  }
   getBool()  async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.getBool(themeKey);
  }

}