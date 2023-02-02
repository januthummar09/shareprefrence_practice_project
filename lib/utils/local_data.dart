import 'package:shared_preferences/shared_preferences.dart';

class LocalData {
  SharedPreferences? prefs;
  setStringData({required String key, required String val}) async {
    prefs = await SharedPreferences.getInstance();
    await prefs!.setString(key, val);
  }

  Future<String> getStringData({required String key}) async {
    prefs = await SharedPreferences.getInstance();
    return prefs!.getString(key)!;
  }
}
