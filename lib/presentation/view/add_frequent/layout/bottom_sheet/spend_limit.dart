import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rebooked_app/presentation/elements/app_button.dart';
import 'package:rebooked_app/presentation/elements/custom_textfield.dart';

import '../../../../../configurations/frontend_configs.dart';
import '../../../../elements/custom_text.dart';

Future<void> showSpendLimit(context) {

  return showModalBottomSheet(
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(0),
          topRight: Radius.circular(0),
        ),
      ),
      context: context,
      builder: (context) {
        bool isSelectedOne=true;
        bool isSelectedTwo=false;
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: StatefulBuilder(

            builder: (BuildContext context,
                void Function(void Function()) setState) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize:MainAxisSize.min,
                children: [
                  const SizedBox(
                    height: 18,
                  ),
                  Text(
                    "Spending limit",
                    style: FrontendConfigs.kAppHeadingStyle,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomText(
                      text:
                      "It is a long established fact that a reader will be distracted by the readable content."),
                  const SizedBox(
                    height: 38,
                  ),
                 CustomTextField(title: "Spending limit", text: "\$564", keyBoardType: TextInputType.number),
                  const SizedBox(
                    height: 38,
                  ),
                  AppButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      btnLabel: "Continue"),
                  const SizedBox(height:18,),
                ],
              );
            },
          ),
        );
      });
}
