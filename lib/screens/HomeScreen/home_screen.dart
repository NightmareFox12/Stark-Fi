import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:stark_fi/screens/HomeScreen/components/card_balance.dart';
import 'package:stark_fi/screens/StakeScreen/stake_screen.dart';
import 'package:stark_fi/services/strk_contract_service.dart';

class HomeScreen extends HookWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final fetchBalanceStrk = useMemoized(() => getMyBalanceStrk());
    final AsyncSnapshot myBalanceStrk = useFuture(fetchBalanceStrk);

    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            width: 80,
            height: 80,
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://raw2.seadn.io/ethereum/0xb47e3cd837ddf8e4c57f05d70ab865de6e193bbb/45b959f01098e9e27dfd0ca9c5a074/3545b959f01098e9e27dfd0ca9c5a074.png",
              ),
            ),
          ),

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
