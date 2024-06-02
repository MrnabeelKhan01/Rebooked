import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:rebooked_app/configurations/frontend_configs.dart';
import 'package:rebooked_app/presentation/elements/app_button.dart';
import 'package:rebooked_app/presentation/elements/custom_text.dart';

Future<void> showProfileCreatedSheet(context) {
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
                    mainAxisAlignment:MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset("assets/images/profile_created.svg",height:150,width:150,),
                    ],
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  Row(
                    mainAxisAlignment:MainAxisAlignment.center,
                    children: [
                      Text(
                        textAlign: TextAlign.center,
                        "Profile created",
                        style: FrontendConfigs.kAppHeadingStyle,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomText(
                      textAlign: TextAlign.center,
                      text:
                      "Great job! You have successfully created another profile"),
                  const SizedBox(
                    height: 38,
                  ),
                  AppButton(onPressed: () {
                    Navigator.pop(context);
                  }, btnLabel: "Ok Great"),
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
