import 'package:flutter/material.dart';
import 'package:jobfinderui/utils/colors.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';
import 'package:velocity_x/velocity_x.dart';

Widget mySwipeButton() {
  return SwipeableButtonView(
    buttontextstyle: const TextStyle(color: Colors.black, fontSize: 16),
    buttonColor: Colors.black,
    onFinish: () {},
    onWaitingProcess: () {},
    activeColor: const Color.fromARGB(255, 239, 152, 46),
    buttonWidget: const Icon(
      Icons.arrow_forward_ios_rounded,
      color: whiteColor,
    ),
    buttonText: 'SWIPE TO CONFIRM',
  ).box.width(300).make();
}
