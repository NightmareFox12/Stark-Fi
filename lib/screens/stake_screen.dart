import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class StakeScreen extends HookWidget {
  const StakeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(
                  text: "Flexible",
                  icon: Icon(Icons.access_alarm_rounded, size: 20),
                ),

                Tab(
                  text: "Limit",
                  icon: Icon(Icons.access_alarm_rounded, size: 20),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  children: [
                    BottomSheet(
                      onClosing: () {},
                      builder: (context) => Text("wey"),
                    ),
                  ],
                ),
              ),

              Text("children tow"),
            ],
          ),
        ),
      ),
    );
  }
}
