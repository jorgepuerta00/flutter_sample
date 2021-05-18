import 'package:flutter/material.dart';

var lightTheme = ThemeData.light().copyWith(
    appBarTheme: AppBarTheme(
        textTheme: TextTheme(
            headline6: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold)),
        iconTheme: IconThemeData(color: Colors.black),
        actionsIconTheme: IconThemeData(color: Colors.black)),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
    ),
    bottomAppBarColor: Colors.white,
    primaryColor: Colors.white,
    brightness: Brightness.light,
    backgroundColor: Colors.white,
    accentColor: Colors.black,
    accentIconTheme: IconThemeData(color: Colors.white),
    dividerColor: Colors.white54,
    tabBarTheme: TabBarTheme(
        labelColor: Colors.black, unselectedLabelColor: Colors.grey),
    scaffoldBackgroundColor: Colors.white);

ThemeData darkTheme = ThemeData.dark().copyWith();

class ThemeChanger extends ChangeNotifier {
  ThemeData _themeData;
  ThemeChanger(this._themeData);
  bool _isDarkTheme = false;

  get isDarkTheme => _isDarkTheme;
  get getTheme => _themeData;

  void setTheme(ThemeData theme) {
    _themeData = theme;
    _isDarkTheme = !_isDarkTheme;
    notifyListeners();
  }
}
