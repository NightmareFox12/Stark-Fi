import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class StakeScreen extends HookWidget {
  const StakeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("Stake")),
        body: Column(children: [Text("caraotas")]),
      ),
    );
  }
}
