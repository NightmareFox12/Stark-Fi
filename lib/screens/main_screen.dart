import 'package:flutter/material.dart';
import 'package:stark_fi/theme/stark_fi_theme.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Positioned.fill(
          child: Expanded(
            child: Image.asset("assets/main_image.png", fit: BoxFit.cover),
          ),
        ),

        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 8,
          children: [
            Text(
              "Stark-Fi",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: StarkFiTheme(context).primaryColor,
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Botón de acción"),
            ),
          ],
        ),
      ],
    );

    //       // Text(
    //       //   "Staking. Simple, secure and decentralized.",
    //       //   style: TextStyle(fontSize: 22),
    //       //   textAlign: TextAlign.center,
    //       // ),
    //     ],
    //   ),
    // );
  }
}
