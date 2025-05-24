import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:stark_fi/screens/staking_info_screen.dart';
import 'package:stark_fi/sharedPreferences/get_data.dart';
import 'package:stark_fi/sharedPreferences/set_data.dart';
import 'package:stark_fi/utils/stark_text_styles.dart';

class StakingCard extends HookWidget {
  const StakingCard({super.key});

  @override
  Widget build(BuildContext context) {
    final fetchStalkingCard = useMemoized(() => GetData.getShowStalkingCard());
    final showStalkingCard = useFuture(fetchStalkingCard);

    return showStalkingCard.data != null && showStalkingCard.data == true
        ? SizedBox()
        : SizedBox(
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
                      padding: const EdgeInsets.only(left: 8, right: 8),
                      child:
                          showStalkingCard.connectionState ==
                              ConnectionState.waiting
                          ? CircularProgressIndicator()
                          : Column(
                              spacing: 8,
                              children: [
                                Text(
                                  "What is Flexible Staking and how does it work?",
                                  style: StarkTextStyles.customText(
                                    context: context,
                                    size: 25,
                                    weight: FontWeight.w500,
                                  ),
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
                    showStalkingCard.connectionState == ConnectionState.waiting
                        ? SizedBox()
                        : Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            spacing: 8,
                            children: [
                              TextButton(
                                onPressed: () async {
                                  SetData.setShowStakingCard(false);
                                },
                                child: Text("Dismiss"),
                              ),
                              FilledButton(
                                onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => StakingInfoScreen(),
                                  ),
                                ),
                                child: Text("Read more"),
                              ),
                            ],
                          ),
                  ],
                ),
              ),
            ),
          );
  }
}
