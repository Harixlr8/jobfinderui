import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../utils/colors.dart';

Widget workType({workName, location, name, onpress}) {
  return InkWell(
    onTap: () {},
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 50,
              padding: const EdgeInsets.all(1),
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 4, 167, 91),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: 'New'.text.size(10).align(TextAlign.center).white.make(),
            ),
            Row(
              children: [
                '1d ago'.text.make(),
                10.widthBox,
                const Icon(
                  Icons.favorite,
                  size: 15,
                  color: Color.fromARGB(255, 204, 135, 45),
                )
              ],
            )
          ],
        ),
        5.heightBox,
        '$workName'.text.semiBold.size(21).make(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.location_on,
                      size: 15,
                    ),
                    10.widthBox,
                    'Trivandrum,'.text.make(),
                    '$location'.text.make(),
                  ],
                ),
                5.heightBox,
                Row(
                  children: [
                    const Icon(
                      Icons.person,
                      size: 15,
                    ),
                    10.widthBox,
                    '$name'.text.make(),
                  ],
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                "Price per day".text.size(10).align(TextAlign.right).make(),
                "800".text.size(20).semiBold.align(TextAlign.right).make(),
                // 5.heightBox,
                // Container(
                //   width: 125,
                //   padding: const EdgeInsets.all(5),
                //   decoration: const BoxDecoration(
                //     color: buttonColor,
                //     borderRadius: BorderRadius.all(
                //       Radius.circular(10),
                //     ),
                //   ),
                //   child: 'View Details'
                //       .text
                //       .size(13)
                //       .align(TextAlign.center)
                //       .black
                //       .make(),
                // ),
                TextButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                    ),
                    backgroundColor:
                        MaterialStateProperty.all(Colors.amber.shade700),
                  ),
                  onPressed: onpress,
                  child: 'View Details'
                      .text
                      .size(13)
                      .align(TextAlign.center)
                      .black
                      .make(),
                ).box.width(120).height(35).make()
              ],
            )
          ],
        )
      ],
    )
        .box
        .roundedSM
        .padding(const EdgeInsets.all(16))
        .border(color: buttonColor)
        .make(),
  );
}

Widget workType2({workName, location, name}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(
            width: 250,
          ),
          // Container(
          //   width: 50,
          //   padding: const EdgeInsets.all(1),
          //   decoration: const BoxDecoration(
          //     color: Color.fromARGB(255, 4, 167, 91),
          //     borderRadius: BorderRadius.all(
          //       Radius.circular(10),
          //     ),
          //   ),
          //   child: 'New'.text.size(10).align(TextAlign.center).white.make(),
          // ),
          Row(
            children: [
              '1d ago'.text.make(),
              10.widthBox,
              const Icon(
                Icons.favorite,
                size: 15,
                color: Color.fromARGB(255, 204, 135, 45),
              )
            ],
          )
        ],
      ),
      10.heightBox,
      '$workName'.text.semiBold.size(21).make(),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.location_on,
                    size: 15,
                  ),
                  10.widthBox,
                  'Trivandrum,'.text.make(),
                  '$location'.text.make(),
                ],
              ),
              10.heightBox,
              Row(
                children: [
                  const Icon(
                    Icons.person,
                    size: 15,
                  ),
                  10.widthBox,
                  '$name'.text.make(),
                ],
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              "Price per day".text.size(10).align(TextAlign.right).make(),
              "800".text.size(20).semiBold.align(TextAlign.right).make(),
              5.heightBox,
              Container(
                width: 125,
                padding: const EdgeInsets.all(5),
                decoration: const BoxDecoration(
                  color: buttonColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: 'View Details'
                    .text
                    .size(13)
                    .align(TextAlign.center)
                    .black
                    .make(),
              ),
            ],
          )
        ],
      )
    ],
  )
      .box
      .roundedSM
      .padding(const EdgeInsets.all(16))
      .border(color: buttonColor)
      .make();
}

Widget workType1({workName, location, name}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // SizedBox(width: 250,),
          Container(
            width: 50,
            padding: const EdgeInsets.all(1),
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 4, 167, 91),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: 'New'.text.size(10).align(TextAlign.center).white.make(),
          ),
          const SizedBox(
            width: 200,
          ),

          Row(
            children: [
              '1d ago'.text.make(),
              10.widthBox,
              const Icon(
                Icons.favorite,
                size: 15,
                color: Color.fromARGB(255, 204, 135, 45),
              )
            ],
          )
        ],
      ),
      10.heightBox,
      '$workName'.text.semiBold.size(21).make(),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.location_on,
                    size: 15,
                  ),
                  10.widthBox,
                  'Trivandrum,'.text.make(),
                  '$location'.text.make(),
                ],
              ),
              10.heightBox,
              Row(
                children: [
                  const Icon(
                    Icons.person,
                    size: 15,
                  ),
                  10.widthBox,
                  '$name'.text.make(),
                ],
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              "Price per day".text.size(10).align(TextAlign.right).make(),
              "800".text.size(20).semiBold.align(TextAlign.right).make(),
              5.heightBox,
              Container(
                width: 125,
                padding: const EdgeInsets.all(5),
                decoration: const BoxDecoration(
                  color: buttonColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: 'View Details'
                    .text
                    .size(13)
                    .align(TextAlign.center)
                    .black
                    .make(),
              ),
            ],
          )
        ],
      )
    ],
  )
      .box
      .roundedSM
      .padding(const EdgeInsets.all(16))
      .border(color: buttonColor)
      .make();
}
