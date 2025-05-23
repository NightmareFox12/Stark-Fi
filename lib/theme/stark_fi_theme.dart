import 'package:flutter/material.dart';
import 'package:stark_fi/utils/theme_utils.dart';

class StarkFiTheme {
  late bool isDark;
  late Color primaryColor;
  late Color contentColor;

  StarkFiTheme(BuildContext context) {
    isDark = isDarkMode(context);

    primaryColor = isDarkMode(context)
        ? StarkFiDark.primaryColor
        : StarkFiLight.primaryColor;

    contentColor = isDarkMode(context)
        ? StarkFiDark.contentColor
        : StarkFiLight.contentColor;
  }
}

class StarkFiLight {
  static final Color primaryColor = Color(0xFF007AFF);
  static final Color contentColor = Color(0xFF000000);
  static final Color background = Color(0xFF16171E);
  
}

class StarkFiDark {
  static final Color primaryColor = Color(0xFF007AFF);
  static final Color contentColor = Color(0xFFFFFFFF);
}
