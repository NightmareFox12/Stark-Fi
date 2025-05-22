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
    //futures
    Future<void> checkLoginStatus() async {
      final bool isLoggedIn = await GetData().getLogin();
      if (context.mounted) {
        if (isLoggedIn) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => CounterPage(title: "jd")),
          );
        }
      }
    }

    //effects
    useEffect(() {
      checkLoginStatus();
      return null;
    }, []);

    return Scaffold(
      body: Stack(
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

              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Text(
                  "Efficient staking in Starknet, designed to maximize rewards and security.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: StarkFiTheme(context).contentColor,
                  ),
                ),
              ),
              FilledButton(
                onPressed: () async {
                  await SetData().setLogin(true);
                  checkLoginStatus();
                },
                child: Text("dale"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
