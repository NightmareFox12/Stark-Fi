import 'package:flutter/material.dart';
import 'package:stark_fi/sharedPreferences/config_data.dart';

class SetData {
  Future<bool> setLogin(bool login) async {
    try {
      final prefs = await ConfigData().getInstance();

      prefs.setBool('login', login);
      return true;
    } catch (e) {
      debugPrint(e.toString());
      return false;
    }
  }
}
