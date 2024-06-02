import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:rebooked_app/configurations/frontend_configs.dart';
import 'package:rebooked_app/presentation/elements/app_button.dart';
import 'package:rebooked_app/presentation/elements/app_card.dart';
import 'package:rebooked_app/presentation/elements/custom_text.dart';

Future<void> showAddProfileSheet(context) {
  bool value = false;
  bool isShow = false;
  return showModalBottomSheet(
      backgroundColor: const Color(0xffFCFDFD),
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(0),
          topRight: Radius.circular(0),
        ),
      ),
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder:
              (BuildContext context, void Function(void Function()) setState) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 18,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const CircleAvatar(
                                radius: 35,
                                backgroundImage:
                                    AssetImage("assets/images/profile.png"),
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "John kyle mico",
                                    style: FrontendConfigs.kAppHeadingStyle,
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  CustomText(
                                    text: "personalemail@gmail.com",
                                    fontSize: 11,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black.withOpacity(0.70),
                                  )
                                ],
                              )
                            ],
                          ),
                          InkWell(
                            borderRadius: BorderRadius.circular(100),
                            onTap: () {
                              setState(() {
                                value = !value;
                              });
                            },
                            child: Container(
                                height: 24,
                                width: 24,
                                decoration: BoxDecoration(
                                    color: value
                                        ? FrontendConfigs.kAppPrimaryColor
                                        : Colors.transparent,
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color:
                                            FrontendConfigs.kAppPrimaryColor)),
                                child: value
                                    ? Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: SvgPicture.asset(
                                            "assets/icons/check.svg"),
                                      )
                                    : const SizedBox()),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.black.withOpacity(0.10),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      isShow?Row(
                        children: [
                          Container(
                            height: 51,
                            width: 51,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color:
                                    const Color(0xff003366).withOpacity(0.10)),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: SvgPicture.asset(
                                  "assets/icons/work_profile.svg"),
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Column(
                            children: [
                              CustomText(
                                text: "Work profile",
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                              const SizedBox(height:3,),
                              CustomText(
                                text: "workemail@gmail.com",
                                fontSize: 11,
                                fontWeight: FontWeight.w600,
                                color: Colors.black.withOpacity(0.70),
                              )
                            ],
                          )
                        ],
                      ):Row(
                        children: [
                          InkWell(
                            onTap: () {
                              setState((){
                                isShow=!isShow;
                              });
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
                          CustomText(
                            text: "Add work profile",
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                )
              ],
            );
          },
        );
      });
}
