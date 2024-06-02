import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rebooked_app/presentation/view/basic_monitoring/enhanced_monitoring.dart';

import '../../../../configurations/frontend_configs.dart';
import '../../../elements/custom_stepper.dart';
import '../../../elements/custom_text.dart';
import '../../default_trip/layout/widget/stepper.dart';

class BasicMonitoringBody extends StatefulWidget {
  const BasicMonitoringBody({super.key});

  @override
  State<BasicMonitoringBody> createState() => _BasicMonitoringBodyState();
}

class _BasicMonitoringBodyState extends State<BasicMonitoringBody> {
  bool isCanceled=true;
  @override
  Widget build(BuildContext context) {
    return   SafeArea(
      child: SingleChildScrollView(
        child: Column(children: [
          Stack(
            clipBehavior:Clip.none,
            children: [
              Container(
                color: FrontendConfigs.kAppPrimaryColor,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
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
                                  CustomText(
                                    text: ' Basic',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 13,
                            ),
                            CustomStepper(width:MediaQuery.sizeOf(context).width/1.18,),
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
                                          ), InkWell(
                                            onTap:(){
                                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const EnhancedMonitoringView()));
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
                                                    const SizedBox(width:5,),
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

                          ],
                        ),
                      ),
                      const SizedBox(height:40,)
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom:-30,
                child: Padding(
                  padding: const EdgeInsets.only(left:18.0),
                  child:isCanceled?
                  InkWell(
                    onTap:(){
                      setState(() {
                        isCanceled=!isCanceled;
                      });
                    },
                    child: Container(
                      width:MediaQuery.sizeOf(context).width/1.1,
                      height:59,
                      decoration:BoxDecoration(
                        borderRadius:BorderRadius.circular(7),
                        color:const Color(0xffE2F0D9),
                      ),
                      child:Row(
                        mainAxisAlignment:MainAxisAlignment.center,
                        children: [
                          CustomText(text: "ON TIME: ",),
                          CustomText(text: "predicted to arrive in time",fontWeight:FontWeight.w600,),
                        ],),
                    ),
                  ):  Container(
                    width:MediaQuery.sizeOf(context).width/1.1,
                    height:59,
                    decoration:BoxDecoration(
                      borderRadius:BorderRadius.circular(7),
                      color:const Color(0xffFF0000),
                    ),
                    child:Column(
                      mainAxisAlignment:MainAxisAlignment.center,
                      crossAxisAlignment:CrossAxisAlignment.center,
                      children: [
                        CustomText(text: "flight cancelled:".toUpperCase(),color:Colors.white,),
                        CustomText(text: "Rebook unavailable. Call 888-888-8888.",fontWeight:FontWeight.w600,color:Colors.white,),
                      ],),
                  ),

                ),
              )
            ],
          ),

          const SizedBox(height:48,),
          const CustomFlyerStepper(),
          const SizedBox(height:28,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:18.0),
            child: Column(
              children: [
                isCanceled?Container(
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
                            Container(
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
                                    const SizedBox(width:5,),
                                    SvgPicture.asset(
                                        "assets/icons/arrow.svg")
                                  ],
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ):
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: const Color(0xffFF0000)),
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
                            padding: const EdgeInsets.all(10.0),
                            child: SvgPicture.asset(
                                "assets/icons/flight_cancel.svg"),
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
                              "Flight cancelled",
                              color:Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Container(
                              height: 30,
                              decoration: BoxDecoration(
                                borderRadius:
                                BorderRadius.circular(6),
                                color: Colors.white,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 18.0),
                                child: Row(
                                  children: [
                                    CustomText(
                                      text: "Rebook unavailable. Call 888-888-8888.",
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color:const Color(0xffFF0000)
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height:18,),
        ],),
      ),
    );
  }
}
