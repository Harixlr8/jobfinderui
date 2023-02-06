import 'package:flutter/material.dart';
import 'package:jobfinderui/utils/colors.dart';
import 'package:velocity_x/velocity_x.dart';

Widget customButton({buttonName,ontap}){
  return TextButton(onPressed: ontap, child: Text(buttonName,style: TextStyle(color: whiteColor,fontSize:20 ),)).box.roundedLg.width(double.infinity).color(buttonColor).make();
}