import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobfinderui/screens/signup/signup_screen2.dart';
import 'package:jobfinderui/utils/colors.dart';
import 'package:jobfinderui/widgets/buttons.dart';
import 'package:jobfinderui/widgets/textfields.dart';
import 'package:velocity_x/velocity_x.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackCustom,
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios),
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
                customTextField(hint: 'Job title'),
                15.heightBox,
                customTextField(hint: 'Contact Number'),
                15.heightBox,
                'Add Your Skills'.text.size(22).color(whiteColor).make(),
                15.heightBox,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 100,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: Row(
                        children: [
                          10.widthBox,
                          const Text('Electrician'),
                          5.widthBox,
                          const Icon(
                            Icons.close,
                            size: 13,
                          ),
                        ],
                      ),
                    )
                  ],
                )
                    .box
                    .height(100)
                    .color(whiteColor)
                    .rounded
                    .width(double.infinity)
                    .padding(const EdgeInsets.all(15))
                    .make(),
                5.heightBox,
                Align(
                  alignment: Alignment.topRight,
                  child: "Add upto 5 skills".text.color(whiteColor).make(),
                ),
                15.heightBox,
                'Work Experience'.text.size(22).color(whiteColor).make(),
                15.heightBox,
                customTextField(height: 115.00, hint: 'Work Experience'),
                15.heightBox,
                'Description'.text.size(22).color(whiteColor).make(),
                15.heightBox,
                customTextField(height: 115.00, hint: ''),
                50.heightBox,
                customButton(buttonName: 'Continue',ontap: (){
                  Get.to(()=>const SignupScreen2());
                }),
              ],
            )),
      ),
    );
  }
}
