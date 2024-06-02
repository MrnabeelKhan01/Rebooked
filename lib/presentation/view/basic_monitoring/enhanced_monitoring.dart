import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../configurations/frontend_configs.dart';
import '../../elements/custom_stepper.dart';
import '../../elements/custom_text.dart';

class EnhancedMonitoringView extends StatefulWidget {
  const EnhancedMonitoringView({super.key});

  @override
  State<EnhancedMonitoringView> createState() => _EnhancedMonitoringViewState();
}

class _EnhancedMonitoringViewState extends State<EnhancedMonitoringView> {
  bool isCanceled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 80,
        backgroundColor: FrontendConfigs.kAppPrimaryColor,
        leading: Padding(
          padding:
              const EdgeInsets.only(bottom: 14, right: 4, top: 14, left: 8),
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
                padding: const EdgeInsets.all(14.0),
                child: SvgPicture.asset(
                  "assets/icons/back_icon.svg",
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: 'Willis Tower, Chicago, IL.',
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              height: 35,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(color: Colors.white)),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Row(
                  children: [
                    SvgPicture.asset("assets/icons/stepper_one.svg"),
                    Row(
                      children: [
                        CustomText(
                          text: "Monitoring Strength: ",
                          fontSize: 11,
                          color: Colors.white,
                        ),
                        CustomText(
                          text: "Enhanced",
                          fontSize: 12,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
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
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size(MediaQuery.sizeOf(context).width, 50),
          child: isCanceled
              ? InkWell(
                  onTap: () {
                    setState(() {
                      isCanceled = !isCanceled;
                    });
                  },
                  child: Transform.translate(
                    offset: const Offset(0, 20),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 14.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width,
                        height: 59,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: const Color(0xffE2F0D9),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomText(
                              text: "ON TIME: ",
                            ),
                            CustomText(
                              text: "predicted to arrive in time",
                              fontWeight: FontWeight.w600,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              : Transform.translate(
                  offset: const Offset(0, 20),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width / 1.1,
                    height: 59,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: const Color(0xffFF0000),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CustomText(
                          text: "flight cancelled:".toUpperCase(),
                          color: Colors.white,
                        ),
                        CustomText(
                          text: "Rebook unavailable. Call 888-888-8888.",
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 48,
              ),
              const CustomFlyerStepper(),
              const SizedBox(
                height: 28,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: "Where are you headed after landing ?",
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Container(
                              height: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
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
                                    SvgPicture.asset("assets/icons/arrow.svg")
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),

                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 18,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
