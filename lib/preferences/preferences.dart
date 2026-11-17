import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  static late SharedPreferences _prefs;

  static String _nom = "";
  static bool _isDarkMode = true;
  static int _genere = 1;

  static Future init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static String get nom {
    return _prefs.getString("nom") ?? _nom;
  }

  static set nom(String nom) {
    _nom = nom;
    _prefs.setString("nom", nom);
  }

  static bool get darkmode {
    return _prefs.getBool("darkmode") ?? _isDarkMode;
  }

  static set darkmode(bool darkmode) {
    _isDarkMode = darkmode;
    _prefs.setBool("darkmode", darkmode);
  }

  static int get genere{
    return _prefs.getInt("genere") ?? _genere;
  }

  static set genere(int darkmode) {
    _genere = genere;
    _prefs.setInt("genere", genere);
  }
}