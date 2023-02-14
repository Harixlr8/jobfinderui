import 'package:flutter/material.dart';
// import 'package:get/get.dart';
import 'package:jobfinderui/widgets/progress_widget.dart';
import 'package:jobfinderui/widgets/work_type.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../utils/colors.dart';
import '../jobdetails.dart/job_details.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: blackCustom,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                ),
              ),
              padding: const EdgeInsets.all(20),
              height: 350,
              width: double.infinity,
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  40.heightBox,
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
                                "Samuel John"
                                    .text
                                    .white
                                    .semiBold
                                    .size(20)
                                    .make(),
                                5.widthBox,
                                 Icon(
                                  Icons.arrow_drop_down_circle,
                                  color: Colors.amber.shade700,
                                )
                              ],
                            ),
                            Row(
                              children: [
                                 Icon(
                                  Icons.location_on,
                                  color: Colors.amber.shade700,
                                ),
                                5.widthBox,
                                'Trivandrum, Palayam'
                                    .text
                                    .white
                                    .fontWeight(FontWeight.w200)
                                    .make()
                              ],
                            ),
                          ],
                        ),
                      ),
                      const Icon(
                        Icons.notification_add,
                        color: whiteColor,
                      )
                    ],
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        progressType(taskNumber: '01', taskStatus: 'Active')
                            .box
                            .roundedSM
                            .white
                            .padding(
                              const EdgeInsets.all(5),
                            )
                            .make(),
                        progressType(taskNumber: '02', taskStatus: 'Pending')
                            .box
                            .roundedSM
                            .white
                            .padding(
                              const EdgeInsets.all(5),
                            )
                            .make(),
                        progressType(taskNumber: '10', taskStatus: 'Completed')
                            .box
                            .roundedSM
                            .white
                            .padding(
                              const EdgeInsets.all(5),
                            )
                            .make(),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Icon(Icons.wallet_rounded),
                          5.widthBox,
                          "Earned".text.size(18).make(),
                          15.widthBox,
                          "6000".text.size(22).semiBold.make(),
                        ],
                      )
                          .box
                          .roundedSM
                          .white
                          .width(180)
                          .padding(const EdgeInsets.all(12))
                          .make(),
                      Row(
                        children: [
                          5.widthBox,
                          "Feedbacks".text.size(18).make(),
                          15.widthBox,
                          "12".text.size(22).semiBold.make(),
                        ],
                      )
                          .box
                          .roundedSM
                          .white
                          .width(180)
                          .padding(const EdgeInsets.all(12))
                          .make(),
                    ],
                  )
                ],
              ),
            ),
            // 10.heightBox,
            Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(Icons.search),
                      'Search'
                          .text
                          .size(20)
                          .color(const Color.fromARGB(255, 140, 139, 139))
                          .make(),
                      150.widthBox,
                      const VerticalDivider(
                        thickness: 2.00,
                        color: Color.fromARGB(221, 87, 86, 86),
                      ),
                      const Icon(Icons.filter_alt_outlined),
                    ],
                  )
                      .box
                      .roundedSM
                      .height(50)
                      .color(const Color.fromARGB(153, 207, 204, 204))
                      .width(double.infinity)
                      .padding(const EdgeInsets.all(10))
                      .make(),
                  10.heightBox,
                  'Job List (10)'.text.size(18).make(),
                  10.heightBox,
                  workType(
                    onpress: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const JobDetails(),
                        ),
                      );
                    },
                    workName: 'Ceiling Light Repairing',
                    location: 'Palayam',
                    name: 'Dipeesh',
                  ),
                  5.heightBox,
                  workType(
                    workName: 'Switch Changing',
                    location: 'Kumarapuram',
                    name: 'Sudeep',
                    onpress: () {},
                  ),
                  5.heightBox,
                  workType(
                    workName: 'Switch Changing',
                    location: 'Palayam',
                    name: 'Sudeep',
                    onpress: () {},
                  ),
                  50.heightBox,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
