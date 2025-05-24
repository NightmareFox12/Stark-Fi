import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:stark_fi/components/image_background.dart';
import 'package:stark_fi/screens/layout_screen.dart';
// import 'package:stark_fi/sharedPreferences/get_data.dart';
// import 'package:stark_fi/theme/stark_fi_theme.dart';
import 'package:stark_fi/utils/stark_text_styles.dart';

class MainScreen extends HookWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //futures
    // Future<void> checkLoginStatus() async {
    //   final bool isLoggedIn = await GetData().getLogin();
    //   if (context.mounted) {
    //     if (isLoggedIn) {
    //       Navigator.pushReplacement(
    //         context,
    //         MaterialPageRoute(builder: (context) => LayoutScreen()),
    //       );
    //     }
    //   }
    // }

    //effects
    useEffect(() {
      //Quitar esto para poner una password
      // checkLoginStatus();
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
                  style: StarkTextStyles.textNormal(
                    context: context,
                    size: 45,
                    weight: FontWeight.w600,
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Text(
                    "Efficient staking in Starknet, designed to maximize rewards and security.",
                    textAlign: TextAlign.center,
                    style: StarkTextStyles.textNormal(
                      context: context,
                      weight: FontWeight.w600,
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
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LayoutScreen(),
                          ),
                        );
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
