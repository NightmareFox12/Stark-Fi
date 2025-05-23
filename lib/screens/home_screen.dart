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
        body: Column(),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.abc), label: "Cafecito"),
            BottomNavigationBarItem(icon: Icon(Icons.abc), label: "cafecito"),
            BottomNavigationBarItem(icon: Icon(Icons.abc), label: "cafecito"),
          ],
        ),
        drawer: Drawer(child: Column(children: [DrawerButton()])),
      ),
    );
  }
}
