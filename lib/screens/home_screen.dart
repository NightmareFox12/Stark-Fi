import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:stark_fi/theme/stark_fi_theme.dart';

class HomeScreen extends HookWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Home"),
          backgroundColor: StarkFiTheme(context).primaryColor,
        ),
        body: Column(children: [Text("Ganains")]),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
              tooltip: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.access_alarms),
              label: "cafecito",
            ),
            BottomNavigationBarItem(
              tooltip: "Home",
              icon: Icon(Icons.zoom_in),
              label: "cafecito",
            ),
          ],
        ),
      ),
    );
  }
}
