import 'package:flutter/material.dart';
import 'package:stark_fi/sharedPreferences/config_data.dart';

class GetData {
  Future<bool?>? getLogin() async {
    try {
      final prefs = await ConfigData().getInstance();

      final bool? login = prefs.getBool('login');
      return login;
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }
}
