import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class LocalData {
  SharedPreferences? prefs;
  setModel(String key,dynamic val) async {
    prefs=await SharedPreferences.getInstance();
    prefs!.setString(key, val);
    
  }
  getModel(String key) async {
    prefs=await SharedPreferences.getInstance();
    var data=prefs!.getString(key)!;
    return jsonDecode(data);
  }

  setStringData({required String key, required String val}) async {
    prefs = await SharedPreferences.getInstance();
    await prefs!.setString(key, val);
  }

  Future<String> getStringData({required String key}) async {
    prefs = await SharedPreferences.getInstance();
    return prefs!.getString(key)!;
  }

  setBoolData(String key, bool val) async {
    prefs = await SharedPreferences.getInstance();
    await prefs!.setBool(key, val);
  }
  
  Future<bool> getBoolData({required String key}) async {
    prefs = await SharedPreferences.getInstance();
    return prefs!.getBool(key)!;
  }
 
}
