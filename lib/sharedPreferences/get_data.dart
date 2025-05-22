import 'package:flutter/material.dart';
import 'package:stark_fi/sharedPreferences/config_data.dart';

class GetData {
  Future<bool> getLogin() async {
    try {
      final prefs = await ConfigData().getInstance();

      return prefs.getBool('login') ?? false;
    } catch (e) {
      debugPrint(e.toString());
      return false;
    }
  }
}
