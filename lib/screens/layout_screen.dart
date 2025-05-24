import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:stark_fi/screens/history_screen.dart';
import 'package:stark_fi/screens/HomeScreen/home_screen.dart';
import 'package:stark_fi/theme/stark_fi_theme.dart';

class LayoutScreen extends HookWidget {
  const LayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //states
    final currentPage = useState(0);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Home",
            style: TextStyle(color: StarkFiTheme(context).contentColor),
          ),
          backgroundColor: StarkFiTheme(context).primaryColor,
        ),
        body: [HomeScreen(), HistoryScreen()][currentPage.value],
        bottomNavigationBar: bottomBar(currentPage),
        backgroundColor: StarkFiTheme(context).base100,
      ),
    );
  }

  NavigationBar bottomBar(ValueNotifier<int> currentPage) {
    return NavigationBar(
      onDestinationSelected: (value) => currentPage.value = value,
      selectedIndex: currentPage.value,
      destinations: [
        NavigationDestination(
          icon: Icon(Icons.home),
          label: "Home",
          tooltip: "Home",
        ),

        NavigationDestination(
          icon: Icon(Icons.history),
          label: "Transactions",
          tooltip: "Transactions",
        ),
      ],
    );
  }
}
