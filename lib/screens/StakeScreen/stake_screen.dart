import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:stark_fi/screens/StakeScreen/components/staking_card.dart';

class StakeScreen extends HookWidget {
  const StakeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //states

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
                padding: EdgeInsetsGeometry.all(8),
                child: Column(children: [StakingCard()]),
              ),
              Text("children tow"),
            ],
          ),
        ),
      ),
    );
  }
}
