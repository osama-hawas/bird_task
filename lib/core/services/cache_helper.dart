import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static late SharedPreferences prefs;

  static Future<void> init() async {
    prefs = await SharedPreferences.getInstance();
  }
// save value
  static Future setValue(String key, var value) async {
    if (value.runtimeType == String) {
      prefs.setString(key, value);
    }
    if (value.runtimeType == int) {
      prefs.setInt(key, value);
    }
    if (value.runtimeType == bool) {
      prefs.setBool(key, value);
    }
  }


// get the value
  static dynamic getValue(String key) {
    return prefs.get(key).runtimeType == String
        ? prefs.getString(key)
        : prefs.get(key).runtimeType == int
            ? prefs.getInt(key)
            : prefs.getBool(key);
  }
}
