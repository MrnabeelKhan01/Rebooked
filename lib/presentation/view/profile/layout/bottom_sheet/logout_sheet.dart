import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:rebooked_app/configurations/frontend_configs.dart';
import 'package:rebooked_app/presentation/elements/app_button.dart';
import 'package:rebooked_app/presentation/elements/custom_text.dart';

Future<void> showLogOutSheet(context) {
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
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: StatefulBuilder(
            builder: (BuildContext context,
                void Function(void Function()) setState) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(
                    height: 28,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        "assets/images/logout.svg",
                        height: 150,
                        width: 150,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        textAlign: TextAlign.center,
                        "Logout?",
                        style: FrontendConfigs.kAppHeadingStyle,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomText(
                      textAlign: TextAlign.center,
                      text: "Are you sure you want to log out?"),
                  const SizedBox(
                    height: 38,
                  ),
                  Row(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween,
                    children: [
                      AppButton(
                          width: MediaQuery.sizeOf(context).width / 2.3,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          btnLabel: "Cancel"),
                      Container(
                        height: 50,
                        width: MediaQuery.sizeOf(context).width / 2.3,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: FrontendConfigs.kAppPrimaryColor
                                .withOpacity(0.10)),
                        child: Row(
                          mainAxisAlignment:MainAxisAlignment.center,
                          children: [
                            CustomText(
                              text: "Logout",
                              color: FrontendConfigs.kAppPrimaryColor,
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                ],
              );
            },
          ),
        );
      });
}
