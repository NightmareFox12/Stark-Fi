import 'package:flutter/material.dart';
import 'package:stark_fi/theme/stark_fi_theme.dart';
import 'package:stark_fi/utils/stark_text_styles.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class CardBalance extends StatelessWidget {
  final AsyncSnapshot myBalanceStrk;

  const CardBalance(this.myBalanceStrk, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: double.maxFinite,
        height: 100,
        child: myBalanceStrk.connectionState == ConnectionState.waiting
            ? Card(
                child: Shimmer(
                  color: Colors.grey,
                  colorOpacity: .6,
                  child: Spacer(),
                ),
              )
            : Card(
                surfaceTintColor: StarkFiTheme(context).primaryColor,
                child: myBalanceStrk.hasError
                    ? Center(
                        child: Text(
                          "A connection error has occurred.",
                          style: StarkTextStyles.textSemiBold,
                        ),
                      )
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Balance:",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
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
    );
  }
}
