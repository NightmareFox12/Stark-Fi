import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:stark_fi/screens/counter_screen.dart';
import 'package:stark_fi/sharedPreferences/get_data.dart';
import 'package:stark_fi/sharedPreferences/set_data.dart';
import 'package:stark_fi/theme/stark_fi_theme.dart';

class MainScreen extends HookWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //states
    final isLogin = useState(false);

    //effects
    useEffect(
      () async {
            final bool? login = await GetData().getLogin();

            isLogin.value = login != null ? false : true;
            return null;
          }
          as Dispose? Function(),
      [],
    );

    useEffect(() {
      if (isLogin.value) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CounterPage(title: "chuleta"),
          ),
        );
      }
      return null;
    }, [isLogin.value]);

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
                color: StarkFiTheme(context).contentColor,
              ),
            ),
            FilledButton(
              onPressed: () {
                SetData().setLogin();
              },
              child: Text("Caraotas"),
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
