import 'package:flutter/material.dart';
import 'package:stark_fi/utils/theme_utils.dart';

class StarkFiTheme {
  late bool isDark;
  late Color primaryColor;

  StarkFiTheme(BuildContext context) {
    isDark = isDarkMode(context);

    primaryColor = isDarkMode(context)
        ? StarkFiDark().primaryColor
        : StarkFiLight().primaryColor;
  }
}

class StarkFiLight {
  final Color primaryColor = Color(0xFF007AFF);
}

class StarkFiDark {
  final Color primaryColor = Color(0xFF007AFF);
}
