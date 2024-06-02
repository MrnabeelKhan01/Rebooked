import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rebooked_app/presentation/elements/app_button.dart';
import 'package:rebooked_app/presentation/elements/custom_textfield.dart';

import '../../../../../configurations/frontend_configs.dart';
import '../../../../elements/custom_text.dart';

Future<void> showAddFrequentFlyer(context) {
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
        List<String> list1 = <String>[
          'British airways',
          'British airways1',
          'British airways2',
        ];

        String dropdownValue1 = "British airways";
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: StatefulBuilder(
            builder: (BuildContext context,
                void Function(void Function()) setState) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 18,
                  ),
                  Text(
                    "Add Frequent Flyer Number",
                    style: FrontendConfigs.kAppHeadingStyle,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomText(
                      text:
                          "Enhance your travel experience and enjoy exclusive benefits & rewards on your upcoming flights."),
                  const SizedBox(
                    height: 38,
                  ),
                  CustomText(text: "Select Airline"),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 50,
                    width: MediaQuery.sizeOf(context).width,
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: FrontendConfigs.kAppBorderColor),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: DropdownButtonHideUnderline(
                        child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 14.0),
                      child: DropdownButton<String>(
                        borderRadius: BorderRadius.circular(10),
                        dropdownColor: Colors.white,
                        autofocus: true,
                        value: dropdownValue1,
                        icon: const Icon(Icons.keyboard_arrow_down_outlined),
                        elevation: 2,
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                        onChanged: (String? value) {
                          // This is called when the user selects an item.
                          setState(() {
                            dropdownValue1 = value!;
                          });
                        },
                        items:
                            list1.map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            ),
                          );
                        }).toList(),
                      ),
                    )),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  CustomTextField(
                      title: "Frequent Flyer Number",
                      text: "BR1273828",
                      keyBoardType: TextInputType.number),
                  const SizedBox(
                    height: 38,
                  ),
                  AppButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      btnLabel: "Add frequent flyer number")
                ],
              );
            },
          ),
        );
      });
}
