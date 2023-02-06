import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../utils/colors.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: blackCustom,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25),
              ),
            ),
            padding: const EdgeInsets.all(20),
            height: 150,
            width: double.infinity,
            child: Column(
              children: [
                40.heightBox,
                Row(
                  children: [
                    const Icon(
                      Icons.arrow_back_ios,
                      color: whiteColor,
                    ),
                    10.widthBox,
                    "Wallet".text.semiBold.white.size(22).make()
                  ],
                ),
              ],
            ),
          ),
          175.heightBox,
          "Hey! \n We are Cooking it up..."
              .text
              .size(32)
              .align(TextAlign.center)
              .bold
              .make(),
          10.heightBox,
          "Stay Tuned!"
              .text
              .size(28)
              .align(TextAlign.center)
              .color(buttonColor)
              .semiBold
              .make(),
        ],
      ),
    );
  }
}
