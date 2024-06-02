import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rebooked_app/configurations/frontend_configs.dart';
import 'package:rebooked_app/presentation/elements/app_button.dart';
import 'package:rebooked_app/presentation/view/basic_monitoring/basic_monitoring_view.dart';
import 'package:rebooked_app/presentation/view/default_trip/default_trip_view.dart';

import '../../../elements/custom_text.dart';
import '../../been_reeboked/been_rebooked_view.dart';
import '../../default_trip/layout/widget/stepper.dart';

class MyJourneyBody extends StatefulWidget {
  const MyJourneyBody({super.key});

  @override
  State<MyJourneyBody> createState() => _MyJourneyBodyState();
}

class _MyJourneyBodyState extends State<MyJourneyBody> {
  bool value = false;
  bool isCanceled = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "My Journeys",
                  style: FrontendConfigs.kAppHeadingStyle,
                ),
                SvgPicture.asset("assets/icons/app_logo.svg"),
              ],
            ),
            const SizedBox(height: 18,),
            DottedBorder(
              borderType: BorderType.RRect,
              strokeWidth: 1,
              dashPattern: const [5, 6],
              color: Colors.black.withOpacity(0.20),
              child: ClipRRect(
                child: Container(
                  height: 83,
                  width: MediaQuery
                      .sizeOf(context)
                      .width,
                  color: const Color(0xffF5F7F9),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>const BeenRebookedView()));
                              },
                              child: Container(
                                height: 48,
                                width: 48,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: const Color(0xff003366)
                                        .withOpacity(0.10)),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: SvgPicture.asset("assets/icons/add.svg"),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomText(
                                  text: "Add more journeys",
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700,
                                ),
                                Row(
                                  children: [
                                    CustomText(
                                      text: "By emailing to ",
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    Text(
                                      "trip@rebooked.com",
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w600,
                                          color:
                                          FrontendConfigs.kAppPrimaryColor,
                                          decoration: TextDecoration.underline),
                                    )
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                        Container(
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: FrontendConfigs.kAppPrimaryColor),
                          child: Padding(
                            padding:
                            const EdgeInsets.symmetric(horizontal: 12.0),
                            child: Row(
                              children: [
                                CustomText(
                                  text: "Send email",
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 18,),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  border: Border.all(color: const Color(0xffE5E5E5)),
                  color: const Color(0xffF5F7F9)),
              child: Column(
                children: [
                  Container(
                    height: 47,
                    decoration: BoxDecoration(
                        color: FrontendConfigs.kAppPrimaryColor,
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(7),
                            topRight: Radius.circular(7))),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CustomText(
                                text: "To Chicago",
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              SvgPicture.asset(
                                "assets/icons/work_profile.svg",
                                color: Colors.white,
                                height: 20,
                              )
                            ],
                          ),
                          CustomText(
                            text: "Tues, Nov. 21",
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            fontSize: 13,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: Colors.white),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Row(
                            children: [
                              CustomText(
                                text: "Monitoring strength:",
                                fontSize: 11,
                                fontWeight: FontWeight.w500,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 13,
                        ),
                        CustomStepper(
                          width: MediaQuery
                              .sizeOf(context)
                              .width / 1.3,
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SizedBox(
                              width: 28,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 18.0),
                              child: CustomText(
                                text: "Basic",
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: CustomText(
                                text: "Enhanced",
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: FrontendConfigs.kAppYellowColor),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12.0, vertical: 10),
                              child: Row(
                                children: [
                                  Container(
                                    height: 48,
                                    width: 48,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: FrontendConfigs.kAppPrimaryColor
                                            .withOpacity(0.10)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: SvgPicture.asset(
                                          "assets/icons/location_icon.svg"),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      CustomText(
                                        text:
                                        "Where are you headed after landing ?",
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700,
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      InkWell(
                                        borderRadius:
                                        BorderRadius.circular(6),
                                        onTap: () {
                                          Navigator.push(context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const BasicMonitoringView()));
                                        },
                                        child: Container(
                                          height: 30,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(6),
                                            color: Colors.black,
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 18.0),
                                            child: Row(
                                              children: [
                                                CustomText(
                                                  text: "Add exact destination",
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.white,
                                                ),
                                                const SizedBox(
                                                  width: 5,
                                                ),
                                                SvgPicture.asset(
                                                    "assets/icons/arrow.svg")
                                              ],
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        if(isCanceled)Container(
                          height: 72,
                          color: const Color(0xffFFD966),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: Row(children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomText(text: "LENGHTY FLIGHT DELAY:",
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,),
                                  CustomText(
                                    text: "Rebooking you now.  Standby…",
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,),
                                ],)
                            ],),
                          ),
                        ) else
                          InkWell(
                            onTap: () {
                              setState(() {
                                isCanceled = !isCanceled;
                              });
                            },
                            child: Container(
                              height: 51,
                              width: MediaQuery
                                  .sizeOf(context)
                                  .width,
                              color: const Color(0xffE2F0D9),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 18.0),
                                child: Row(
                                  children: [
                                    CustomText(
                                      text: "ON TIME: ",
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    CustomText(
                                      text: "Predicted to arrive in time",
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 126,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    CustomText(
                                      text: "6:25 PM",
                                      fontSize: 11,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    InkWell(
                                      borderRadius: BorderRadius.circular(100),
                                      onTap: () {
                                        setState(() {
                                          value = !value;
                                        });
                                      },
                                      child: Container(
                                          height: 13,
                                          width: 13,
                                          decoration: BoxDecoration(
                                              color: value
                                                  ? FrontendConfigs
                                                  .kAppPrimaryColor
                                                  : Colors.transparent,
                                              shape: BoxShape.circle,
                                              border: Border.all(
                                                  color: FrontendConfigs
                                                      .kAppPrimaryColor)),
                                          child: value
                                              ? Padding(
                                            padding:
                                            const EdgeInsets.all(1.0),
                                            child: SvgPicture.asset(
                                                "assets/icons/check.svg"),
                                          )
                                              : const SizedBox()),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    CustomText(
                                      text: "6:25 PM",
                                      fontSize: 11,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    InkWell(
                                      borderRadius: BorderRadius.circular(100),
                                      onTap: () {
                                        setState(() {
                                          value = !value;
                                        });
                                      },
                                      child: Container(
                                          height: 13,
                                          width: 13,
                                          decoration: BoxDecoration(
                                              color: value
                                                  ? FrontendConfigs
                                                  .kAppPrimaryColor
                                                  : Colors.transparent,
                                              shape: BoxShape.circle,
                                              border: Border.all(
                                                  color: FrontendConfigs
                                                      .kAppPrimaryColor)),
                                          child: value
                                              ? Padding(
                                            padding:
                                            const EdgeInsets.all(1.0),
                                            child: SvgPicture.asset(
                                                "assets/icons/check.svg"),
                                          )
                                              : const SizedBox()),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              Container(
                                height: 24,
                                width: 24,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: SvgPicture.asset(
                                      "assets/icons/flyer.svg"),
                                ),
                              ),
                              Container(
                                height: 55,
                                width: 1,
                                color: Color(0xffE5E5E5),
                              ),
                              Container(
                                height: 24,
                                width: 24,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child:
                                  SvgPicture.asset("assets/icons/to.svg"),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomText(
                                text: "New York, NY, USA",
                                fontSize: 11,
                                fontWeight: FontWeight.w600,
                              ),
                              CustomText(
                                text: "Willis Tower. Chicago, \nIL, USA",
                                fontSize: 11,
                                fontWeight: FontWeight.w600,
                              ),
                            ],
                          ),
                          Image.asset(
                            "assets/images/dalta.png",
                            height: 60,
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 47,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(7),
                            bottomRight: Radius.circular(7))),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                            text: "Enhanced monitoring Enabled", fontSize: 12,),
                          IconButton(onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>DefaultTripView()));
                          }, icon: SvgPicture.asset(
                              "assets/icons/setting.svg"))
                        ],),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
