import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:velocity_x/velocity_x.dart';

@override
Widget progressType({taskNumber, taskStatus}) {
  return CircularPercentIndicator(
    radius: 50.0,
    lineWidth: 7.0,
    percent: 0.3,
    center: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          taskNumber,
          style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 18.0),
        ),
        Text(
          taskStatus,
          style: const TextStyle(
              fontWeight: FontWeight.w400,
              color: Color.fromARGB(255, 113, 112, 112),
              fontSize: 16.0),
        ),
      ],
    ),
    circularStrokeCap: CircularStrokeCap.butt,
    backgroundColor: Color.fromARGB(255, 210, 138, 30),
    progressColor: const Color.fromARGB(255, 203, 199, 199),
  ).box.white.roundedFull.make();
}
