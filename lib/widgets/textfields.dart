import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../utils/colors.dart';

Widget customTextField({height=50.00, String? hint}) {
  return TextField(
    decoration:
        InputDecoration(border: InputBorder.none, hintText: '    $hint'),
  ).box.rounded.height(height).color(whiteColor).make();
}
