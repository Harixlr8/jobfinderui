import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:jobfinderui/screens/signup/address_screen.dart';
import 'package:jobfinderui/screens/signup/signup_screen.dart';
import 'package:jobfinderui/utils/lists.dart';
import 'package:jobfinderui/widgets/buttons.dart';
import 'package:jobfinderui/widgets/textfields.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../utils/colors.dart';

class SignupScreen2 extends StatelessWidget {
  const SignupScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackCustom,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: const Text(
          'Create Profile',
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              'Portfolio'.text.size(25).color(whiteColor).make(),
              'Attach images of your completed jobs'
                  .text
                  .size(15)
                  .color(whiteColor)
                  .make(),
              15.heightBox,
              imageGrid(),
              15.heightBox,
              const Text(
                'Hourly Rates',
                style: TextStyle(fontSize: 22, color: whiteColor),
              ),
              15.heightBox,
              Row(
                children: [
                  customTextField(hint: '').box.width(220).make(),
                  10.widthBox,
                  const Text(
                    '/hr',
                    style: TextStyle(color: whiteColor, fontSize: 22),
                  ),
                ],
              ),
              225.heightBox,
              customButton(
                  ontap: () {
                    Get.to(() => const AddressScreen());
                  },
                  buttonName: 'Submit'),
            ],
          ),
        ),
      ),
    );
  }

  SizedBox imageGrid() {
    return SizedBox(
      height: 265,
      child: GridView.builder(
          itemCount: 6,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 10, crossAxisSpacing: 10, crossAxisCount: 3),
          itemBuilder: (context, index) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                imageList[index],
                fit: BoxFit.cover,
              ),
            );
          }),
    );
  }
}
