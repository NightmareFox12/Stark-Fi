import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:stark_fi/screens/stake_screen.dart';
import 'package:stark_fi/services/strk_contract_service.dart';
import 'package:stark_fi/theme/stark_fi_theme.dart';

class HomeScreen extends HookWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final fetchBalanceStrk = useMemoized(() => getMyBalanceStrk());
    final myBalanceStrk = useFuture(fetchBalanceStrk);

    Widget dios() {
      if (myBalanceStrk.connectionState == ConnectionState.waiting) {
        return CircularProgressIndicator();
      } else {
        return Text(
          "${myBalanceStrk.data ?? 0} STRK",
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.w600),
        );
      }
    }

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

          Center(
            child: SizedBox(
              width: double.maxFinite,
              child: Card(
                surfaceTintColor: StarkFiTheme(context).primaryColor,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Amount disponible:",
                        style: TextStyle(fontSize: 16),
                      ),
                      dios(),
                    ],
                  ),
                ),
              ),
            ),
          ),

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
