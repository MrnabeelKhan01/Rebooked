import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rebooked_app/presentation/elements/app_button.dart';
import 'package:rebooked_app/presentation/elements/custom_textfield.dart';

import '../../../../../configurations/frontend_configs.dart';
import '../../../../elements/custom_text.dart';

Future<void> showRebookModeFlyer(context) {

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
                children: [
                  const SizedBox(
                    height: 18,
                  ),
                  Text(
                    "Rebooking mode",
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
                  SizedBox(
                    height: 78,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 48,
                              width: 48,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: const Color(0xff003366)
                                      .withOpacity(0.10)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child:
                                    Image.asset("assets/icons/check_mark.png"),
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Column(
                              crossAxisAlignment:CrossAxisAlignment.start,
                              children: [
                                CustomText(
                                  text: "Auto Accept",
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                ),
                                SizedBox(
                                  width:240,
                                  child: RichText(
                                      text:  TextSpan(
                                          text:
                                              "Opt for convenience! If we propose a new route and you ",
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w400,
                                              color: FrontendConfigs
                                                  .kAppPrimaryColor),
                                        children: [
                                          TextSpan(
                                          text:
                                          "See More...",
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w600,
                                              color: FrontendConfigs
                                                  .kAppPrimaryColor),)
                                        ]
                                      )
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        InkWell(
                          borderRadius:BorderRadius.circular(100),
                          onTap:(){
                            setState(() {
                              isSelectedOne =!isSelectedOne;
                              isSelectedTwo=false;
                            });
                          },
                          child: Container(
                            height:18,
                            width:18,
                            decoration:BoxDecoration(
                              shape:BoxShape.circle,
                              border:Border.all(color:FrontendConfigs.kAppPrimaryColor)
                            ),
                            child:Padding(
                              padding: const EdgeInsets.all(1.5),
                              child: Container(
                                decoration:BoxDecoration(
                                    shape:BoxShape.circle,
                                    color:isSelectedOne?FrontendConfigs.kAppPrimaryColor:Colors.transparent
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 78,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 48,
                              width: 48,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: const Color(0xff003366)
                                      .withOpacity(0.10)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child:
                                Image.asset("assets/icons/block.png"),
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Column(
                              crossAxisAlignment:CrossAxisAlignment.start,
                              children: [
                                CustomText(
                                  text: "Auto Reject",
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                ),
                                const SizedBox(height:3,),
                                SizedBox(
                                  width:240,
                                  child: RichText(
                                      text:  TextSpan(
                                          text:
                                          "Prefer to decide yourself? Choose this option. If you don't ",
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w400,
                                              color: FrontendConfigs
                                                  .kAppPrimaryColor),
                                          children: [
                                            TextSpan(
                                              text:
                                              "See More...",
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w600,
                                                  color: FrontendConfigs
                                                      .kAppPrimaryColor),)
                                          ]
                                      )
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        const SizedBox(height:18,),
                        InkWell(
                          onTap:(){
                            setState(() {
                              isSelectedTwo =!isSelectedTwo;
                              isSelectedOne=false;
                            });
                          },
                          child: Container(
                            height:18,
                            width:18,
                            decoration:BoxDecoration(
                                shape:BoxShape.circle,
                                border:Border.all(color:FrontendConfigs.kAppPrimaryColor)
                            ),
                            child:Padding(
                              padding: const EdgeInsets.all(1.5),
                              child: Container(
                                decoration:BoxDecoration(
                                    shape:BoxShape.circle,
                                    color:isSelectedTwo?FrontendConfigs.kAppPrimaryColor:Colors.transparent
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 38,
                  ),
                  AppButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      btnLabel: "Continue"),
                ],
              );
            },
          ),
        );
      });
}
