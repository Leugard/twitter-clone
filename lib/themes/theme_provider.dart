import 'package:flutter/material.dart';
import 'package:twitter_clone/themes/dark_mode.dart';
import 'package:twitter_clone/themes/light_mode.dart';

class ThemeProvider with ChangeNotifier {
  // Initially, set is as light mode
  ThemeData _themeData = lightMode;

  // Get current theme
  ThemeData get themeData => _themeData;

  // is it dark mode currently?
  bool get isDarkMode => _themeData == darkMode;

  // set the theme
  set themeData(ThemeData themeData) {
    _themeData = themeData;

    // Update UI
    notifyListeners();
  }

  // Toggle between dark & light mode
  void toggleTheme() {
    if (_themeData == lightMode) {
      themeData = darkMode;
    } else {
      themeData = lightMode;
    }
  }
}
