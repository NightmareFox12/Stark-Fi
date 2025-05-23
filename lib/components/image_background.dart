import 'package:flutter/material.dart';
import 'package:stark_fi/utils/theme_utils.dart';

//Debe estar un Stack padre
class ImageBackground extends StatelessWidget {
  const ImageBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Expanded(
        child: Image.asset(
          isDarkMode(context)
              ? "assets/background_image_dark.png"
              : "assets/background_image_light.png",
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
