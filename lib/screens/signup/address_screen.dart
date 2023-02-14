import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobfinderui/screens/home/home.dart';
import 'package:jobfinderui/utils/colors.dart';
import 'package:velocity_x/velocity_x.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // height: double.infinity,
        // width: double.infinity,
        decoration: const BoxDecoration(
          // color: blackCustom
          image: DecorationImage(
            image: AssetImage(
              'assets/images/newasset.png',
            ),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              decoration: const BoxDecoration(
                color: blackCustom,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
              padding: const EdgeInsets.all(20),
              height: 350,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // 15.heightBox,
                  Align(
                    alignment: Alignment.center,
                    child: 'Select Address'
                        .text
                        .color(whiteColor)
                        .size(20)
                        .bold
                        .make(),
                  ),
                  15.heightBox,
                  'Use Saved Address'.text.color(Colors.grey).size(16).make(),
                  5.heightBox,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 100,
                        decoration: BoxDecoration(
                          color: blackCustom,
                          border: Border.all(),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: Row(
                          children: [
                            5.widthBox,
                            const CircleAvatar(
                                backgroundColor: buttonColor,
                                radius: 11,
                                child: Icon(
                                  Icons.location_on_outlined,
                                  color: Colors.black,
                                )),
                            10.widthBox,
                            'Home'
                                .text
                                .color(buttonColor)
                                .fontWeight(FontWeight.bold)
                                .make(),
                          ],
                        ),
                      ),
                      5.heightBox,
                      'Kanchani Shop,Shasthamangalam'
                          .text
                          .fontWeight(FontWeight.w500)
                          .make(),
                      5.heightBox,
                      'Thiruvananthapuram,Kerala 695010,India'
                          .text
                          .fontWeight(FontWeight.w500)
                          .make(),
                    ],
                  )
                      .box
                      .white
                      .roundedSM
                      .padding(const EdgeInsets.all(15))
                      .width(double.infinity)
                      .make(),
                  15.heightBox,

                  Row(
                    children: [
                      const Icon(
                        Icons.add_circle,
                        color: buttonColor,
                      ),
                      10.widthBox,
                      'Add a new Location'
                          .text
                          .color(buttonColor)
                          .size(18)
                          .fontWeight(FontWeight.w500)
                          .make(),
                    ],
                  ),
                  5.heightBox,
                  Row(
                    children: [
                      const CircleAvatar(
                          backgroundColor: buttonColor,
                          radius: 11,
                          child: Icon(
                            Icons.location_on_outlined,
                            color: Colors.black,
                          )),
                      10.widthBox,
                      'Use Current Location'
                          .text
                          .color(buttonColor)
                          .size(18)
                          .fontWeight(FontWeight.w500)
                          .make(),
                    ],
                  ),
                  25.heightBox,
                  TextButton(
                    onPressed: () {
                      Get.to(()=>const Home());
                    },
                    child: const Text(
                      'CONFIRM',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                  )
                      .box
                      .roundedLg
                      .width(double.infinity)
                      .color(buttonColor)
                      .make()
                ],
              ),
            ),
          ],
        ).box.make(),
      ),
    );
  }
}
