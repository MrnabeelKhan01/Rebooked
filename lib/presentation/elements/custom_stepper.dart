import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rebooked_app/configurations/frontend_configs.dart';
import 'package:rebooked_app/presentation/elements/custom_text.dart';

class CustomFlyerStepper extends StatelessWidget {
  const CustomFlyerStepper({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 28.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  CustomText(
                    text: "3:45 PM",
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                  ),
                  const Text(
                    "3:45 PM",
                    style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        decoration: TextDecoration.lineThrough),
                  )
                ],
              ),
              const SizedBox(
                width: 8,
              ),
              Column(
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: FrontendConfigs.kAppSecondaryColor),
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: SvgPicture.asset("assets/icons/step_one.svg"),
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 2,
                    color: FrontendConfigs.kAppSecondaryColor,
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                ],
              ),
              const SizedBox(
                width: 8,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            text: "Departs new york, lGA",
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                          ),
                          CustomText(
                            text: "American Flight #7263",
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                          ),
                          Row(
                            children: [
                              CustomText(
                                text: "Gate B12",
                                fontSize: 10,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Container(
                                height: 5,
                                width: 5,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xff626262)),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              CustomText(
                                text: "Delayed",
                                fontSize: 10,
                                color: const Color(0xffE03A3E),
                              ),
                            ],
                          ),
                          CustomText(
                            text: "aircraft enroute, Due 5:48 PM",
                            fontSize: 10,
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 18,
                      ),
                      Image.asset(
                        "assets/images/american.png",
                        height: 50,
                      )
                    ],
                  )
                ],
              )
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  CustomText(
                    text: "6:15 PM",
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                  ),
                  const Text(
                    "6:15 PM",
                    style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        decoration: TextDecoration.lineThrough),
                  ),
                ],
              ),
              const SizedBox(
                width: 15,
              ),
              Column(
                children: [
                  Container(
                    height: 16,
                    width: 16,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: FrontendConfigs.kAppSecondaryColor),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Container(
                    height: 60,
                    width: 2,
                    color: FrontendConfigs.kAppSecondaryColor,
                  ),
                ],
              ),
              const SizedBox(
                width: 8,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: "Connect in dallas DFW",
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                  ),
                  CustomText(
                    text: "Gate B12",
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                  )
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 3,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: "6:50 PM",
                fontSize: 11,
                fontWeight: FontWeight.w500,
              ),
              const SizedBox(
                width: 15,
              ),
              Column(
                children: [
                  Container(
                    height: 16,
                    width: 16,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: FrontendConfigs.kAppSecondaryColor),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  DottedLine(
                    direction: Axis.vertical,
                    alignment: WrapAlignment.center,
                    lineLength: 65,
                    lineThickness: 2.0,
                    dashLength: 4.0,
                    dashColor: FrontendConfigs.kAppSecondaryColor,
                    dashRadius: 0.0,
                    dashGapLength: 4.0,
                    dashGapColor: Colors.transparent,
                    dashGapRadius: 0.0,
                  ),
                ],
              ),
              const SizedBox(
                width: 8,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            text: "Departs new york, lGA",
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                          ),
                          CustomText(
                            text: "American Flight #7263",
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                          ),
                          Row(
                            children: [
                              CustomText(
                                text: "Gate B12",
                                fontSize: 10,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Container(
                                height: 5,
                                width: 5,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xff626262)),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              CustomText(
                                  text: "On-Time",
                                  fontSize: 10,
                                  color: FrontendConfigs.kAppSecondaryColor),
                            ],
                          ),
                          CustomText(
                            text: "aircraft enroute, Due 5:48 PM",
                            fontSize: 10,
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 18,
                      ),
                      Image.asset(
                        "assets/images/american.png",
                        height: 50,
                      )
                    ],
                  )
                ],
              )
            ],
          ),
          Row(
            crossAxisAlignment:CrossAxisAlignment.start,
            children: [
              CustomText(text: ""),
              const SizedBox(
                width: 50,
              ),
              Column(
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xffF4F4F4)),
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: SvgPicture.asset("assets/icons/plan.svg"),
                    ),
                  ),
                  Container(
                      height: 60, width: 2, color: const Color(0xffF4F4F4)),
                ],
              ),
              const SizedBox(width:8,),
              CustomText(
                text: "1h 35m ",
                fontSize: 12,
              )
            ],
          ),
          Row(
            crossAxisAlignment:CrossAxisAlignment.start,
            children: [
              CustomText(
                text: "8:00 PM",
                fontSize: 11,
              ),
              const SizedBox(width:8,),
              Column(
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xffF4F4F4)),
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: SvgPicture.asset("assets/icons/circle.svg"),
                    ),
                  ),
                  Container(
                      height: 60, width: 2, color: const Color(0xffF4F4F4)),
                ],
              ),
              const SizedBox(width:8,),
              Column(
                children: [
                  CustomText(
                    text: "Arrive chicago oRD",
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                  ),
                  Row(
                    children: [
                      CustomText(
                        text: "Gate H17",
                        fontSize: 10,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 5,
                        width: 5,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Color(0xff626262)),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      CustomText(
                        text: "Baggage 12",
                        fontSize: 10,
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
          Row(
            crossAxisAlignment:CrossAxisAlignment.start,
            children: [

              CustomText(
                text: "9:00 PM",
                fontSize: 11,
              ),
              const SizedBox(width:8,),
              Column(
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xffF4F4F4)),
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: SvgPicture.asset("assets/icons/circle.svg"),
                    ),
                  ),
                  Container(
                      height: 60, width: 2, color: const Color(0xffF4F4F4)),
                ],
              ),
              const SizedBox(width:8,),
              CustomText(
                text: "Drive to willis tower, \nChicago, IL",
                fontSize: 13,
                fontWeight: FontWeight.w700,
              )
            ],
          ),
          Row(
            crossAxisAlignment:CrossAxisAlignment.start,
            children: [
              CustomText(
                text: "9:32 PM",
                fontSize: 11,
              ),
              const SizedBox(width:6,),
              SvgPicture.asset("assets/icons/flag.svg"),
              const SizedBox(width:8,),
              Column(
                children: [
                  CustomText(
                    text: "arrive willis tower, Chicago, \nIL",
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            width:200,
            child: Row(
              mainAxisAlignment:MainAxisAlignment.end,
              children: [
                CustomText(
                  text: "expected 1hr 28m early",
                  fontSize: 10,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
