import 'package:flutter/material.dart';
import 'package:stark_fi/utils/theme_utils.dart';

class StarkFiTheme {
  late bool isDark;
  late Color primaryColor;
  late Color contentColor;

  StarkFiTheme(BuildContext context) {
    isDark = isDarkMode(context);

    primaryColor = isDarkMode(context)
        ? StarkFiDark().primaryColor
        : StarkFiLight().primaryColor;

    contentColor = isDarkMode(context)
        ? StarkFiDark().contentColor
        : StarkFiLight().contentColor;
  }
}

class StarkFiLight {
  final Color primaryColor = Color(0xFF007AFF);
  final Color contentColor = Color(0xFF000000);
}

class StarkFiDark {
  final Color primaryColor = Color(0xFF007AFF);
  final Color contentColor = Color(0xFFFFFFFF);
}
