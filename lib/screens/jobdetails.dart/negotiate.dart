import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobfinderui/utils/colors.dart';
import 'package:jobfinderui/widgets/swipebutton.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../widgets/textfields.dart';

class NegotiateScreen extends StatelessWidget {
  const NegotiateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackCustom,
      appBar: AppBar(
        actions: [
          const Icon(Icons.more_vert),
          10.widthBox,
        ],
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: const Text(
          'Negotiate',
          style: TextStyle(fontSize: 24),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    'Ceiling Light Repairing'.text.size(20).semiBold.make(),
                    55.widthBox,
                    '8 hrs ago'.text.size(8).make(),
                    10.widthBox,
                    Icon(
                      Icons.favorite,
                      color: orangeShade,
                    )
                  ],
                ),
                10.heightBox,
                'Before you begin,turn off power switch controlling the light fixture to OFF position.Turn of the main power if there is any chance another person/children turning on the wall power switch while you are working.'
                    .text
                    .size(15)
                    .fontWeight(FontWeight.w500)
                    .make(),
                20.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        'Amount'.text.color(Colors.grey).make(),
                        5.heightBox,
                        '800 per day'
                            .text
                            .size(20)
                            .fontWeight(FontWeight.w500)
                            .make(),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        'Audio Instruction'.text.color(Colors.grey).make(),
                        5.heightBox,
                        Row(
                          children: [
                            Icon(
                              Icons.play_circle,
                              color: orangeShade,
                              size: 40,
                            ),
                            5.widthBox,
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/sound-waves.png',
                                  width: 45,
                                  height: 40,
                                ),
                                Image.asset(
                                  'assets/images/sound-waves (1).png',
                                  width: 45,
                                  height: 40,
                                ),
                                Image.asset(
                                  'assets/images/sound-waves.png',
                                  width: 45,
                                  height: 40,
                                ),
                                '00.50'.text.size(5).color(Colors.grey).make(),
                              ],
                            )
                                .box
                                .border()
                                .padding(const EdgeInsets.all(2))
                                .roundedSM
                                .make()
                          ],
                        )
                      ],
                    )
                  ],
                ),
                5.heightBox
              ],
            ).box.white.roundedSM.padding(const EdgeInsets.all(15)).make(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                15.heightBox,
                'Description'.text.size(18).color(whiteColor).make(),
                15.heightBox,
                customTextField(height: 115.00, hint: 'Type Description'),
                15.heightBox,
                'Type your amount'.text.size(18).color(whiteColor).make(),
                20.heightBox,
                SizedBox(
                  width: 80,
                  child: Column(
                    children: [
                      '₹ 750'.text.size(30).color(whiteColor).make(),
                      const Divider(
                        thickness: 0.800,
                        color: whiteColor,
                      )
                    ],
                  ),
                ),
              ],
            ),
            const Spacer(),
            mySwipeButton(),
          ],
        ),
      ),
    );
  }
}
