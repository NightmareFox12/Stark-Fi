import 'package:flutter/cupertino.dart';
import 'package:stark_fi/theme/stark_fi_theme.dart';

class StarkTextStyles {
  static TextStyle customText({
    required BuildContext context,
    double? size = 16,
    FontWeight? weight,
  }) => TextStyle(
    fontSize: size,
    fontWeight: weight,
    color: StarkFiTheme(context).contentColor,
  );
}
