

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rebooked_app/presentation/view/default_trip/layout/body.dart';

import '../../../configurations/frontend_configs.dart';
import '../../elements/custom_text.dart';
import 'layout/widget/stepper.dart';

class DefaultTripView extends StatelessWidget {
  const DefaultTripView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: FrontendConfigs.kAppPrimaryColor,
        leading: Padding(
          padding:
              const EdgeInsets.only(bottom: 14, right: 8, top: 14, left: 8),
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              height: 48,
              width: 48,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(color: Colors.white)),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: SvgPicture.asset(
                  "assets/icons/back_icon.svg",
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        title: CustomText(
          text: 'Chicago ORD',
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: CustomText(
              text: "Tues, Nov. 21",
              color: Colors.white.withOpacity(0.8),
              fontSize: 13,
              fontWeight: FontWeight.w500,
            ),
          )
        ],
        bottom: PreferredSize(
          preferredSize: Size(MediaQuery.sizeOf(context).width, 190),
          child: Container(
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
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: DefaultTripBody(),
    );
  }
}
