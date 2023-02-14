import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../utils/colors.dart';
import '../../widgets/work_type.dart';

class WorkScreen extends StatefulWidget {
  const WorkScreen({super.key});

  @override
  State<WorkScreen> createState() => _WorkScreenState();
}

class _WorkScreenState extends State<WorkScreen> {
  int? _formindex;

  @override
  void initState() {
    super.initState();
    _formindex = 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.greenAccent,
      body: SizedBox(
        height: double.infinity,
        child: Stack(
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
              height: 150,
              width: double.infinity,
              child: Column(
                children: [
                  40.heightBox,
                  Row(
                    children: [
                      const Icon(
                        Icons.arrow_back_ios,
                        color: whiteColor,
                      ),
                      10.widthBox,
                      "Works".text.semiBold.white.size(22).make()
                    ],
                  ),
                  10.heightBox,
                ],
              ),
            ),
            Positioned(
              top: 120,
              left: 40,
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        _formindex = 1;
                      });
                    },
                    child: Container(
                      height: 40,
                      width: 110,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                        color: _formindex == 1
                            ? buttonColor
                            : Colors.grey.shade400,
                        // color: buttonColor,
                        border: Border.all(),
                      ),
                      child: const Center(
                        child: Text(
                          'Pending',
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        _formindex = 2;
                      });
                    },
                    child: Container(
                      height: 40,
                      width: 110,
                      decoration: BoxDecoration(
                        color: _formindex == 2
                            ? buttonColor
                            : Colors.grey.shade400,
                        border: Border.all(),
                      ),
                      child: const Center(
                        child: Text(
                          'Active',
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        _formindex = 3;
                      });
                    },
                    child: Container(
                      height: 40,
                      width: 110,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                        color: _formindex == 3
                            ? buttonColor
                            : Colors.grey.shade400,
                        border: Border.all(),
                      ),
                      child: const Center(
                        child: Text(
                          'Completed',
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            if (_formindex == 1)
              Positioned(
                top: 160,
                left: 17,
                child: Container(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      workType1(
                          workName: 'Ceiling Light Repairing',
                          location: 'Kumarapuram',
                          name: 'Dipesh'),
                      10.heightBox,
                      workType1(
                          workName: 'Switch Changing',
                          location: 'Kumarapuram',
                          name: 'Sudeep'),
                      10.heightBox,
                      workType1(
                          workName: 'Switch Changing',
                          location: 'Kumarapuram',
                          name: 'Sudeep'),
                    ],
                  ),
                ),
              ),
            if (_formindex == 2)
              Positioned(
                top: 160,
                left: 17,
                child: Container(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      workType2(
                          workName: 'Ceiling Light Repairing',
                          location: 'Kumarapuram',
                          name: 'Dipesh'),
                      10.heightBox,
                      workType2(
                          workName: 'Switch Changing',
                          location: 'Kumarapuram',
                          name: 'Sudeep'),
                    ],
                  ),
                ),
              ),
            if (_formindex == 3)
              Positioned(
                top: 160,
                left: 17,
                child: Container(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      workType2(
                          workName: 'Ceiling Light Repairing',
                          location: 'Kumarapuram',
                          name: 'Dipesh'),
                      10.heightBox,
                      workType2(
                          workName: 'Switch Changing',
                          location: 'Kumarapuram',
                          name: 'Sudeep'),
                      5.heightBox,
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
