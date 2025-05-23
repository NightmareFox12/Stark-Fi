import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:stark_fi/screens/stake_screen.dart';

class HomeScreen extends HookWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Amount disponible:", style: TextStyle(fontSize: 16)),
                  Text(
                    "2.34",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ),
        ),

        FilledButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => StakeScreen()),
            );
          },
          child: Text("Stake now"),
        ),
      ],
    );
  }
}
