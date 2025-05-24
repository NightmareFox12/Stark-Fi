import 'package:flutter/material.dart';
import 'package:stark_fi/sharedPreferences/config_data.dart';

class GetData {
  static Future<bool> getLogin() async {
    try {
      final prefs = await ConfigData().getInstance();

      return prefs.getBool('login') ?? false;
    } catch (e) {
      debugPrint(e.toString());
      return false;
    }
  }

  static Future<bool> getShowStalkingCard() async {
    try {
      final prefs = await ConfigData().getInstance();

      return prefs.getBool('showStaking') ?? true;
    } catch (e) {
      debugPrint(e.toString());
      return false;
    }
  }
}
