import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:stark_fi/components/image_background.dart';
import 'package:stark_fi/screens/counter_screen.dart';
import 'package:stark_fi/screens/home_screen.dart';
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
            MaterialPageRoute(builder: (context) => HomeScreen()),
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
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: [
            ImageBackground(),

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 12,
              children: [
                SizedBox(
                  height: 180,
                  width: 180,
                  child: ClipOval(child: Image.asset("assets/logo.jpg")),
                ),

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
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: SizedBox(
                    width: double.maxFinite,
                    child: FilledButton(
                      onPressed: () async {
                        // await SetData().setLogin(true);
                        // checkLoginStatus();
                      },
                      child: Text("Connect to Wallet"),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
