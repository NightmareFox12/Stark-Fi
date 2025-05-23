import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:stark_fi/screens/HomeScreen/components/card_balance.dart';
import 'package:stark_fi/screens/stake_screen.dart';
import 'package:stark_fi/services/strk_contract_service.dart';
import 'package:stark_fi/theme/stark_fi_theme.dart';

class HomeScreen extends HookWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final fetchBalanceStrk = useMemoized(() => getMyBalanceStrk());
    final AsyncSnapshot myBalanceStrk = useFuture(fetchBalanceStrk);

    // Widget balanceCard() {

    // }

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 80,
            height: 80,
            child: CircleAvatar(backgroundImage: AssetImage("assets/logo.jpg")),
          ),

          // balanceCard(),
          CardBalance(myBalanceStrk),

          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => StakeScreen()),
              );
            },
            child: Text("Stake now"),
          ),
        ],
      ),
    );
  }
}
