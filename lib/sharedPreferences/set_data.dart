import 'package:flutter/material.dart';
import 'package:stark_fi/sharedPreferences/config_data.dart';

class SetData {
  static Future<bool> setLogin(bool login) async {
    try {
      final prefs = await ConfigData().getInstance();

      prefs.setBool('login', login);
      return true;
    } catch (e) {
      debugPrint(e.toString());
      return false;
    }
  }

  static Future<bool> setShowStakingCard(bool show) async {
    try {
      final prefs = await ConfigData().getInstance();

      prefs.setBool('showStaking', show);
      return true;
    } catch (e) {
      debugPrint(e.toString());
      return false;
    }
  }
}
