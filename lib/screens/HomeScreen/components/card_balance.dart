import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:stark_fi/theme/stark_fi_theme.dart';

class CardBalance extends StatelessWidget {
  final AsyncSnapshot myBalanceStrk;

  const CardBalance(this.myBalanceStrk, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: double.maxFinite,
        child: Card(
          surfaceTintColor: StarkFiTheme(context).primaryColor,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: myBalanceStrk.connectionState == ConnectionState.waiting
                ? Center(child: CircularProgressIndicator())
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Amount disponible:",
                        style: TextStyle(fontSize: 16),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        spacing: 10,
                        children: [
                          Text(
                            "${myBalanceStrk.data ?? 0} STRK",
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Image.asset(
                            "assets/strk_logo.png",
                            width: 25,
                            height: 25,
                          ),
                        ],
                      ),
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}
