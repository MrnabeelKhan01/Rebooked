
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:rebooked_app/presentation/view/lets_connect/bottom_sheet/billing_address.dart';

import '../../../../configurations/frontend_configs.dart';
import '../../../elements/app_button.dart';
import '../../../elements/custom_text.dart';
import '../../../elements/custom_textfield.dart';

Future<void> showAddCredictCardSheet(context) {
  bool value=false;
  return showModalBottomSheet(
      isScrollControlled:true,
      backgroundColor:const Color(0xffFCFDFD),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
      ),
      context: context,
      builder: (context) {
        return StatefulBuilder(builder: (BuildContext context, void Function(void Function()) setState) {

          return Padding(
              padding: const EdgeInsets.symmetric(horizontal:16.0),
              child:Padding(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: Column(
                  mainAxisSize:MainAxisSize.min,
                  children: [
                    Column(
                      crossAxisAlignment:CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height:18,),
                        Text(
                          "Add Credit card",
                          style: FrontendConfigs.kAppHeadingStyle,
                        ),
                        const SizedBox(height:10,),
                        CustomText(
                            text:
                            "Your information will be kept safe and protected. Please add your credit card information."),
                        const SizedBox(height:18,),
                        LinearPercentIndicator(
                          animation: true,
                          lineHeight: 6.0,
                          animationDuration: 2500,
                          barRadius:const Radius.circular(100),
                          backgroundColor:const Color(0xffE1E9EE),
                          percent:0.6,
                          linearStrokeCap: LinearStrokeCap.roundAll,
                          progressColor: const Color(0xff4F55C1),
                        ),
                        const SizedBox(height:18,),
                        CustomTextField(title: "Card holder name", text: "kyle", keyBoardType: TextInputType.text),
                        const SizedBox(height:18,),
                        CustomTextField(title: "Card number", text: "5424 7893 8976", keyBoardType: TextInputType.text),
                        const SizedBox(height:18,),
                        Row(
                          mainAxisAlignment:MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                                width:MediaQuery.sizeOf(context).width/2.3,
                                child: CustomTextField(title: "Expiry date", text: "13/2027", keyBoardType: TextInputType.number)),
                            SizedBox(
                                width:MediaQuery.sizeOf(context).width/2.3,
                                child: CustomTextField(title: "Zip", text: "123456", keyBoardType: TextInputType.number))
                          ],),
                        const SizedBox(height:38,),
                        Row(
                          children: [

                            InkWell(
                              borderRadius: BorderRadius.circular(7),
                              onTap: () {
                                setState(() {
                                  value = !value;
                                });
                              },
                              child: Container(
                                  height: 24,
                                  width: 24,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(7),
                                      border: Border.all(
                                          color: FrontendConfigs.kAppPrimaryColor)),
                                  child: value
                                      ? Icon(
                                    Icons.check,
                                    size: 20.0,
                                    color: FrontendConfigs.kAppPrimaryColor,
                                  )
                                      : const SizedBox()),
                            ),
                            const SizedBox(width:8,),
                            Expanded(
                              child: RichText(
                                text: TextSpan(
                                    text: "Make Default Card? ",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black.withOpacity(0.70),
                                        fontFamily:"Lato"
                                    )
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height:18,),
                        AppButton(onPressed: (){
                          Navigator.pop(context);
                        showBillingAddressSheet(context);
                        }, btnLabel:"Continue"),
                        const SizedBox(height:18,),
                      ],),
                  ],
                ),
              )
          );
        },
        );
      });
}