import 'package:flutter/material.dart';
import 'package:stark_fi/utils/theme_utils.dart';

class StarkFiTheme {
  late bool isDark;
  late Color primaryColor;
  late Color contentColor;
  late Color base100;

  StarkFiTheme(BuildContext context) {
    isDark = isDarkMode(context);

    primaryColor = StarkFiLight.primaryColor;
    contentColor = StarkFiLight.contentColor;
    base100 = StarkFiLight.base100;

    // primaryColor = isDarkMode(context)
    //     ? StarkFiDark.primaryColor
    //     : StarkFiLight.primaryColor;

    // contentColor = isDarkMode(context)
    //     ? StarkFiDark.contentColor
    //     : StarkFiLight.contentColor;

    // base100 = isDarkMode(context) ? StarkFiDark.base100 : StarkFiLight.base100;
  }
}

class StarkFiLight {
  static final Color primaryColor = blue300;
  static final Color contentColor = Color(0xFF000000);
  static final Color base100 = Color(0xFFFBFBFB);
}

// class StarkFiDark {
//   static final Color primaryColor = Color(0xFF615fff);
//   static final Color contentColor = Color(0xFFFFFFFF);
//   static final Color base100 = neutral950;
// }

//TailwindCSS Colors
final Color neutral950 = Color(0xFF0A0A0A);

final Color blue300 = Color(0xFF8ec5ff);
final Color blue400 = Color(0xFF51a2ff);
