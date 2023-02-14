import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobfinderui/screens/jobdetails.dart/negotiate.dart';
import 'package:jobfinderui/utils/colors.dart';
import 'package:jobfinderui/widgets/buttons.dart';
import 'package:jobfinderui/widgets/swipebutton.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../utils/lists.dart';

class JobDetails extends StatelessWidget {
  const JobDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
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
          'Job Details',
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
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
                                    '00.50'
                                        .text
                                        .size(5)
                                        .color(Colors.grey)
                                        .make(),
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
                30.heightBox,
              ],
            ),
          ),
          imageGrid(),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    'About Customer'.text.white.size(22).semiBold.make(),
                    TextButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(whiteColor)),
                      onPressed: () {},
                      child: 'Get Direction'.text.size(18).black.make(),
                    ),
                  ],
                ),
                10.heightBox,
                Row(
                  children: [
                    Stack(
                      children: [
                        Image.network(
                          'https://expertphotography.b-cdn.net/wp-content/uploads/2020/08/social-media-profile-photos-3.jpg',
                          width: 90,
                        ).box.roundedFull.clip(Clip.antiAlias).make(),
                        Positioned(
                          bottom: 5,
                          right: 15,
                          child: Container(
                            height: 13,
                            width: 13,
                            decoration: BoxDecoration(
                              border: Border.all(color: whiteColor),
                              color: Colors.green,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(50),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              "Samuel John".text.white.semiBold.size(20).make(),
                              10.widthBox,
                              '4.8'
                                  .text
                                  .black
                                  .make()
                                  .box
                                  .white
                                  .roundedSM
                                  .padding(const EdgeInsets.all(3))
                                  .make()
                            ],
                          ),
                          5.heightBox,
                          'Swasthi,Karakulam Jn Kachani, Near temple,TVM,Pin-690522'
                              .text
                              .color(const Color.fromARGB(255, 198, 196, 196))
                              .make(),
                          10.heightBox,
                          Row(
                            children: [
                              const Icon(
                                Icons.call_outlined,
                                color: whiteColor,
                                size: 15.00,
                              )
                                  .box
                                  .roundedFull
                                  .border(color: whiteColor)
                                  .padding(const EdgeInsets.all(5))
                                  .color(Colors.transparent)
                                  .make(),
                              10.widthBox,
                              const Icon(
                                Icons.message_rounded,
                                color: blackCustom,
                                size: 20.00,
                              )
                                  .box
                                  .roundedFull
                                  .border(color: whiteColor)
                                  .padding(
                                    const EdgeInsets.all(2),
                                  )
                                  .color(whiteColor)
                                  .make(),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
                5.heightBox,
                const Divider(
                  color: Color.fromARGB(255, 243, 235, 235),
                ),
                5.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    customButton2(
                      buttonName: 'Reject',
                      ontap: () {},
                      color: const Color.fromARGB(255, 204, 9, 9),
                      width: width * 0.45,
                    ),
                    customButton2(
                      buttonName: 'Negotiaite',
                      ontap: () {
                        Get.to(() => NegotiateScreen());
                      },
                      color: const Color.fromARGB(255, 37, 123, 221),
                      width: width * 0.45,
                    )
                  ],
                ),
                //swipe
                10.heightBox,
                mySwipeButton(),
              ],
            ),
          )
        ],
      ),
      backgroundColor: blackCustom,
    );
  }
}

SizedBox imageGrid() {
  return SizedBox(
    height: 140,
    child: GridView.builder(
        itemCount: 3,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 125.00,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            crossAxisCount: 3),
        itemBuilder: (context, index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              lightImageList[index],
              fit: BoxFit.cover,
            ),
          );
        }),
  );
}
