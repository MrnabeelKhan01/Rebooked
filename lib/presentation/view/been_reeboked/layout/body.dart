import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:rebooked_app/configurations/frontend_configs.dart';
import 'package:rebooked_app/presentation/elements/custom_text.dart';

class BeenRebookedBody extends StatefulWidget {
  const BeenRebookedBody({super.key});

  @override
  State<BeenRebookedBody> createState() => _BeenRebookedBodyState();
}

class _BeenRebookedBodyState extends State<BeenRebookedBody> {
  bool value=true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "My Journey",
                    style: FrontendConfigs.kAppHeadingStyle,
                  ),
                  Image.asset(
                    "assets/images/p_logo.png",
                    height: 36,
                  ),
                ],
              ),
              const SizedBox(height:14,),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: const Color(0xffF5F7F9),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 47,
                      decoration: BoxDecoration(
                          color: FrontendConfigs.kAppPrimaryColor,
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(7),
                              topRight: Radius.circular(7))),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
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
                                const SizedBox(width:8,),
                                SvgPicture.asset(
                                  "assets/icons/work_profile.svg",
                                  color: Colors.white,
                                  height: 20,
                                ),
                              ],
                            ),
                            CustomText(
                              text: "Tues, Nov. 21",
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      color: const Color(0xff4F9756),
                      child: Column(
                        crossAxisAlignment:CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                "assets/images/rebook.svg",
                                height: 37,
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              CustomText(
                                text: "You’ve Been Rebooked",
                                fontSize: 22,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width,
                              color: Colors.white,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 6,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left:12.0),
                                    child: CustomText(
                                      text:
                                      "United saves the day with a new route.",
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black
                                          .withOpacity(0.6),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 2,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left:12.0),
                                    child: CustomText(
                                      text:
                                      "Predicted you can now arrive in time.",
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black
                                          .withOpacity(0.6),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 12.0, top: 8, bottom: 8),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 200,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [

                                              const SizedBox(
                                                height: 8,
                                              ),
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  CustomText(
                                                    text: "6:00 PM",
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                  const SizedBox(
                                                    width: 8,
                                                  ),
                                                  Column(
                                                    children: [
                                                      SvgPicture.asset(
                                                        "assets/icons/circle.svg",
                                                        height: 12,
                                                      ),
                                                      Container(
                                                          height: 30,
                                                          width: 2,
                                                          color: const Color(
                                                              0xffF4F4F4)),
                                                    ],
                                                  ),
                                                  const SizedBox(
                                                    width: 8,
                                                  ),
                                                  CustomText(
                                                    text: "Arrives at EWR",
                                                    fontSize: 11,
                                                    fontWeight: FontWeight.w500,
                                                  )
                                                ],
                                              ),
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  CustomText(
                                                    text: "7:00 PM",
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                  const SizedBox(
                                                    width: 8,
                                                  ),
                                                  Column(
                                                    children: [
                                                      SvgPicture.asset(
                                                        "assets/icons/circle.svg",
                                                        height: 12,
                                                      ),
                                                      Container(
                                                          height: 30,
                                                          width: 2,
                                                          color: const Color(
                                                              0xffF4F4F4)),
                                                    ],
                                                  ),
                                                  const SizedBox(
                                                    width: 8,
                                                  ),
                                                  CustomText(
                                                    text: "United Flight #726",
                                                    fontSize: 11,
                                                    fontWeight: FontWeight.w500,
                                                  )
                                                ],
                                              ),
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  CustomText(
                                                    text: "8:00 PM",
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                  const SizedBox(
                                                    width: 8,
                                                  ),
                                                  Column(
                                                    children: [
                                                      SvgPicture.asset(
                                                        "assets/icons/circle.svg",
                                                        height: 12,
                                                      ),
                                                      Container(
                                                          height: 30,
                                                          width: 2,
                                                          color: const Color(
                                                              0xffF4F4F4)),
                                                    ],
                                                  ),
                                                  const SizedBox(
                                                    width: 8,
                                                  ),
                                                  CustomText(
                                                    text: "Land MDW",
                                                    fontSize: 11,
                                                    fontWeight: FontWeight.w500,
                                                  )
                                                ],
                                              ),
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  CustomText(
                                                    text: "9:00 PM",
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                  const SizedBox(
                                                    width: 8,
                                                  ),
                                                  Column(
                                                    children: [
                                                      SvgPicture.asset(
                                                        "assets/icons/circle.svg",
                                                        height: 12,
                                                      ),
                                                      Container(
                                                          height: 30,
                                                          width: 2,
                                                          color: const Color(
                                                              0xffF4F4F4)),
                                                    ],
                                                  ),
                                                  const SizedBox(
                                                    width: 8,
                                                  ),
                                                  CustomText(
                                                    text:
                                                        "Drive to Willis Tower",
                                                    fontSize: 11,
                                                    fontWeight: FontWeight.w500,
                                                  )
                                                ],
                                              ),
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  CustomText(
                                                    text: "9:30 PM",
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                  const SizedBox(
                                                    width: 8,
                                                  ),
                                                  Column(
                                                    children: [
                                                      SvgPicture.asset(
                                                        "assets/icons/circle.svg",
                                                        height: 12,
                                                      ),
                                                    ],
                                                  ),
                                                  const SizedBox(
                                                    width: 8,
                                                  ),
                                                  CustomText(
                                                    text: "Arive willis tower",
                                                    fontSize: 11,
                                                    fontWeight: FontWeight.w500,
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            Image.asset(
                                              "assets/images/jetblue.png",
                                              height: 65,
                                            ),
                                            const SizedBox(
                                              height: 48,
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 14.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CustomText(
                                          text: "New route price \$323.",
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: const Color(0xffBE0C0C),
                                        ),
                                        CustomText(
                                          text:
                                              "Original flight may be eligible for refund/credit.",
                                          fontSize: 12,
                                        ),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal:14.0),
                            child: Row(
                              children: [
                                const Text(
                                  "Reject",
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                      decoration: TextDecoration.underline,
                                      decorationColor: Colors.white),
                                ),
                                LinearPercentIndicator(
                                  width: MediaQuery.of(context).size.width - 100,
                                  animation: true,
                                  lineHeight: 40.0,
                                  backgroundColor:const Color(0xffA9D18E).withOpacity(0.75),
                                  barRadius: const Radius.circular(100),
                                  animationDuration: 2000,
                                  percent: 0.9,
                                  center: const Text(
                                    "Confirm (Auto in 8:29)",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black),
                                  ),
                                  progressColor: const Color(0xffA9D18E),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:14.0,bottom:5,top:5),
                            child: CustomText(text: "*  Separate Rebooked fee of \$99 already charged.",fontSize:12,color:Colors.white,),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height:59,
                      color:const Color(0xffFFD966),
                      child:Row(
                        mainAxisAlignment:MainAxisAlignment.center,
                        children: [
                        Column(
                          mainAxisAlignment:MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment:MainAxisAlignment.center,
                              children: [
                                CustomText(
                                  textAlign:TextAlign.center,
                                  text: "original route: ".toUpperCase(),fontSize:12,fontWeight:FontWeight.w500,),
                              ],
                            ),
                            CustomText(text: "Predicted you won't arrive in time",fontSize:14,fontWeight:FontWeight.w700,),
                          ],)
                      ],),
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
                      decoration:  BoxDecoration(
                          color: Colors.white,
                         border:Border.all(color:Colors.black.withOpacity(0.1))
                      ),
                      child:Padding(
                        padding: const EdgeInsets.only(left:18.0),
                        child: Row(
                          mainAxisAlignment:MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText(text: "Enhanced monitoring Enabled",fontSize:12,),
                            IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/setting.svg"))
                          ],),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height:18,)
            ],
          ),
        ),
      ),
    );
  }
}
