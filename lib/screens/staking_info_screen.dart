import 'package:flutter/material.dart';
import 'package:stark_fi/theme/stark_fi_theme.dart';
import 'package:stark_fi/utils/stark_text_styles.dart';

class StakingInfoScreen extends StatelessWidget {
  const StakingInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Flexible Staking"),
          backgroundColor: StarkFiTheme(context).primaryColor,
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                spacing: 10,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "What is Flexible Staking?",
                    style: StarkTextStyles.customText(
                      context: context,
                      size: 28,
                      weight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "While traditional staking requires locking up assets for specific periods, flexible staking allows access to funds at any time without restrictions. This provides a unique combination of rewards and freedom, allowing users to generate income without losing control over their investments.",
                    style: StarkTextStyles.customText(context: context),
                    textAlign: TextAlign.justify,
                  ),

                  Text(
                    "How does it work?",
                    style: StarkTextStyles.customText(
                      context: context,
                      size: 28,
                      weight: FontWeight.w500,
                    ),
                  ),

                  Text(
                    "When you participate in flexible staking, you are essentially delegating your assets to a platform or protocol that uses them to secure the network or generate performance. Instead, you receive rewards in the form of interest or additional tokens. The key to this mode is that you have no restrictions on how long you must keep your funds in staking: you can join and leave whenever you want.",
                    style: StarkTextStyles.customText(context: context),
                    textAlign: TextAlign.justify,
                  ),

                  Text(
                    "Benefits of Flexible Staking?",
                    style: StarkTextStyles.customText(
                      context: context,
                      size: 28,
                      weight: FontWeight.w500,
                    ),
                  ),

                  benefitFlexible(
                    context,
                    "Immediate access to your funds.",
                    Icons.check_circle,
                  ),

                  benefitFlexible(
                    context,
                    "Generate passive income.",
                    Icons.check_circle,
                  ),

                  benefitFlexible(
                    context,
                    "No time commitments",
                    Icons.check_circle,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row benefitFlexible(BuildContext context, String text, IconData icon) => Row(
    spacing: 10,
    children: [
      Icon(icon),
      Text(text, style: StarkTextStyles.customText(context: context)),
    ],
  );
}
