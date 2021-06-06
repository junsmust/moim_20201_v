
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
class SharePreferenceManager {

  Future<SharedPreferences> _getSharePreference() async {
    final prefs = await SharedPreferences.getInstance();

    return prefs;
  }

  void saveData<T>(String key , T inputValue) {
    final prefs = SharedPreferences.getInstance();
    if (T is int) {

      _getSharePreference().then((value) =>
          value.setInt(key,1)
      );
    }
  }
}