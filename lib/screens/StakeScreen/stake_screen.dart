import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:stark_fi/utils/stark_text_styles.dart';

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
                child: Column(
                  children: [
                    SizedBox(
                      width: double.maxFinite,
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 8,
                            bottom: 8,
                            left: 16,
                            right: 16,
                          ),
                          child: Column(
                            spacing: 10,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 8,
                                  right: 8,
                                ),
                                child: Column(
                                  spacing: 8,
                                  children: [
                                    Text(
                                      "What is Flexible Staking and how does it work?",
                                      // style: StarkTextStyles.textTheme(context),
                                    ),
                                    SizedBox(
                                      width: double.maxFinite,
                                      child: Text(
                                        "Learn more about flexible staking.",
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                spacing: 8,
                                children: [
                                  TextButton(
                                    onPressed: () {},
                                    child: Text("Dismiss"),
                                  ),
                                  FilledButton(
                                    onPressed: () {},
                                    child: Text("Read more"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
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
