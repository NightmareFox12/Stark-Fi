import 'package:flutter/material.dart';
import 'package:stark_fi/sharedPreferences/config_data.dart';

class SetData {
  Future<bool> setLogin() async {
    try {
      final prefs = await ConfigData().getInstance();

      prefs.setBool('login', true);
      return true;
    } catch (e) {
      debugPrint(e.toString());
      return false;
    }
  }
}
