import 'package:flutter/material.dart';

//Debe estar un Stack padre
class ImageBackground extends StatelessWidget {
  const ImageBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Expanded(
        child: Image.asset(
          "assets/background_image_light.png",
          fit: BoxFit.cover,
        ),

        // child: Image.asset(
        //   isDarkMode(context)
        //       ? "assets/background_image_dark.png"
        //       : "assets/background_image_light.png",
        //   fit: BoxFit.cover,
        // ),
      ),
    );
  }
}
