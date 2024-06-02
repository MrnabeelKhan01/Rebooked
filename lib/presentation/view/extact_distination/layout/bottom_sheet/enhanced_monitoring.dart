import 'package:flutter/material.dart';

import 'package:rebooked_app/configurations/frontend_configs.dart';
import 'package:rebooked_app/presentation/elements/app_button.dart';
import 'package:rebooked_app/presentation/elements/custom_text.dart';

Future<void> showEnhancedMonitoringSheet(context) {
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
                    height: 18,
                  ),
                  Row(
                    mainAxisAlignment:MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/enchanced.png",height:150,width:150,),
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
                        "unlocked Enhanced Monitoring",
                        style: FrontendConfigs.kAppHeadingStyle,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment:MainAxisAlignment.center,
                    children: [
                      CustomText(
                          textAlign: TextAlign.center,
                          text:
                              "By filling all the steps you have unlocked\nenhanced monitoring to better\nmonitor your flights"),
                    ],
                  ),
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
