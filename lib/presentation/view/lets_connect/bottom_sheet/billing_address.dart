
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../../configurations/frontend_configs.dart';
import '../../../elements/app_button.dart';
import '../../../elements/custom_text.dart';
import '../../../elements/custom_textfield.dart';
import '../../add_frequent/layout/filer_number.dart';

Future<void> showBillingAddressSheet(context) {
  bool value=false;
  List<String> list = <String>[
    'Alaska',
    'Arkansas',
    'Arizona',
  ];
  List<String> list1 = <String>[
    'Cordova',
    'Arkansas',
    'Arizona',
  ];

  String dropdownValue1 = "Cordova";
  String dropdownValue = "Alaska";
  bool _value=false;
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
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
              child:Padding(
                padding: const EdgeInsets.symmetric(horizontal:16.0),
                child: Column(
                  mainAxisSize:MainAxisSize.min,
                  children: [
                    Column(
                      crossAxisAlignment:CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height:18,),
                        Text(
                          "Billing address",
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
                          percent:1,
                          linearStrokeCap: LinearStrokeCap.roundAll,
                          progressColor: const Color(0xff4F55C1),
                        ),
                        const SizedBox(height:18,),
                        CustomTextField(title: "Address 1", text: "Chalotte St", keyBoardType: TextInputType.text),
                        const SizedBox(height:18,),
                        CustomTextField(title: "Address 2", text: "Chalotte St", keyBoardType: TextInputType.text),
                        const SizedBox(height:18,),
                        CustomText(text: "State"),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: 50,
                          width: MediaQuery.sizeOf(context).width,
                          decoration: BoxDecoration(
                              border: Border.all(color: FrontendConfigs.kAppBorderColor),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white),
                          child: DropdownButtonHideUnderline(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 14.0),
                                child: DropdownButton<String>(
                                  borderRadius: BorderRadius.circular(10),
                                  dropdownColor: Colors.white,
                                  autofocus: true,
                                  value: dropdownValue,
                                  icon: const Icon(Icons.keyboard_arrow_down_outlined),
                                  elevation: 2,
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                  onChanged: (String? value) {
                                    // This is called when the user selects an item.
                                    setState(() {
                                      dropdownValue = value!;
                                    });
                                  },
                                  items: list.map<DropdownMenuItem<String>>((String value) {
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
                        const SizedBox(height:18,),
                        Row(
                          mainAxisAlignment:MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment:CrossAxisAlignment.start,
                              children: [
                                CustomText(text: "City"),
                                const SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  height: 50,
                                  width: MediaQuery.sizeOf(context).width/2.3,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: FrontendConfigs.kAppBorderColor),
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
                                          items: list1.map<DropdownMenuItem<String>>((String value) {
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
                              ],
                            ),
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
                                  _value = !_value;
                                });
                              },
                              child: Container(
                                  height: 24,
                                  width: 24,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(7),
                                      border: Border.all(
                                          color: FrontendConfigs.kAppPrimaryColor)),
                                  child: _value
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
                                    text: "Billing address is same as home address?",
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
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const   FilerNumberView()));
                        }, btnLabel:"Continue")
                      ],),
                    const SizedBox(height:18,),
                  ],
                ),
              ),
          );
        },
        );
      });
}