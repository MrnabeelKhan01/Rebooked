import 'package:another_xlider/another_xlider.dart';
import 'package:another_xlider/models/handler.dart';
import 'package:another_xlider/models/slider_step.dart';
import 'package:another_xlider/models/tooltip/tooltip.dart';
import 'package:another_xlider/models/tooltip/tooltip_box.dart';
import 'package:another_xlider/models/trackbar.dart';
import 'package:bottom_picker/bottom_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rebooked_app/configurations/frontend_configs.dart';
import 'package:rebooked_app/presentation/elements/app_button.dart';
import 'package:rebooked_app/presentation/elements/custom_text.dart';
import 'package:rebooked_app/presentation/view/extact_distination/exact_distination_view.dart';



Future<void> showArrivalWindowSheet(context) {
  return showModalBottomSheet(
      backgroundColor: Colors.white,
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

              double _lv2 = 1.0;
              double _uv2 = 11.0;



              return Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 18,
                  ),
                  Text(
                    "Arrival window ",
                    style: FrontendConfigs.kAppHeadingStyle,
                  ),
                  const SizedBox(height:10,),
                  CustomText(
                      text:
                          "This is the latest time you can arrive at your destination and still make your journey worth it. "
                          "  If you are traveling home, we recommend adding a day to your initial flight."),
                  const SizedBox(height:28,),
                  Row(
                    mainAxisAlignment:MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset("assets/images/frame.svg",fit:BoxFit.cover,),
                    ],
                  ),
                  FlutterSlider(
                    values: [_lv2, _uv2],
                    rangeSlider: true,
                    max: 12,
                    min: 0,
                    step: const FlutterSliderStep(step: 0.1),
                    jump: true,
                    tooltip:FlutterSliderTooltip(
                    ),
                    trackBar: FlutterSliderTrackBar(
                      inactiveTrackBar: BoxDecoration(
                          color: FrontendConfigs.kAppPrimaryColor
                              .withOpacity(0.20)),
                      activeTrackBar: BoxDecoration(
                          color: FrontendConfigs.kAppPrimaryColor),
                      inactiveTrackBarHeight: 4,
                      activeTrackBarHeight: 4,
                    ),
                    handler: FlutterSliderHandler(
                      decoration: const BoxDecoration(),
                      child:Container(
                        decoration: BoxDecoration(
                          shape:BoxShape.circle,
                          color:Colors.white,
                          boxShadow: [
                            BoxShadow(
                              offset:const Offset(0, 0),
                              blurRadius:4,
                              color:Colors.black.withOpacity(0.25)
                            )
                          ]
                        ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SvgPicture.asset("assets/icons/time_icon.svg"),
                          ))
                    ),
                    rightHandler: FlutterSliderHandler(
                      child: Container(
                          decoration: BoxDecoration(
                              shape:BoxShape.circle,
                              color:Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    offset:const Offset(0, 0),
                                    blurRadius:4,
                                    color:Colors.black.withOpacity(0.25)
                                )
                              ]
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SvgPicture.asset("assets/icons/slide.svg"),
                          ))
                    ),
                    disabled: false,
                  ),
                  const SizedBox(height:18,),
                  Row(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween,
                    children: [
                    Container(
                      height:52,
                      width:MediaQuery.sizeOf(context).width/2.3,
                      decoration:BoxDecoration(
                        color:Colors.white,
                        borderRadius:BorderRadius.circular(10),
                        border:Border.all(color:FrontendConfigs.kAppBorderColor)
                      ),
                      child:Padding(
                        padding: const EdgeInsets.only(left:8.0),
                        child: Row(
                          mainAxisAlignment:MainAxisAlignment.start,
                          children: [
                          SvgPicture.asset("assets/icons/time_icon.svg",height:19,),
                          const SizedBox(width:8,),
                          Column(
                            mainAxisAlignment:MainAxisAlignment.center,
                            crossAxisAlignment:CrossAxisAlignment.start,
                            children: [
                            CustomText(text: "Jan 25 3PM",fontSize:12,fontWeight:FontWeight.w700,),
                            const SizedBox(height:4,),
                            CustomText(text: "Desired arrival by",fontSize:10,fontWeight:FontWeight.w400,)
                          ],)
                        ],),
                      ),
                    ),
                    InkWell(
                      onTap:(){
                        Navigator.pop(context);
                        BottomPicker.dateTime(
                          pickerTextStyle:const TextStyle(fontSize:18,fontWeight:FontWeight.w500),
                          buttonWidth:MediaQuery.sizeOf(context).width/1.2,
                          buttonContent:Row(
                            mainAxisAlignment:MainAxisAlignment.center,
                            children: [
                              CustomText(text: 'Continue',color:Colors.white,fontSize:15,fontWeight:FontWeight.w600,),
                            ],
                          ),
                          height:MediaQuery.sizeOf(context).height/1.2,
                          displayCloseIcon:false,
                          pickerTitle: Column(
                            children: [
                               Text(
                                'Latest Acceptable Arrival Time',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                  color:FrontendConfigs.kAppPrimaryColor,
                                ),
                              ),
                              CustomText(text: "This is the latest time you can arrive at your destination and still make your journey worth it.   If you are traveling home, we recommend adding a day to your initial flight.")
                            ],
                          ),
                          onSubmit: (date) {
                            print(date);
                          },
                          onClose: () {
                            print('Picker closed');
                          },
                          minDateTime: DateTime(2021, 5, 1),
                          maxDateTime: DateTime(2021, 8, 2),
                          initialDateTime: DateTime(2021, 5, 1),
                          gradientColors: const [
                            Color(0xff003366),
                            Color(0xff003366),
                          ],
                        ).show(context);
                      },
                      child: Container(
                        height:52,
                        width:MediaQuery.sizeOf(context).width/2.3,
                        decoration:BoxDecoration(
                            color:Colors.white,
                            borderRadius:BorderRadius.circular(10),
                            border:Border.all(color:FrontendConfigs.kAppBorderColor)
                        ),
                        child:Padding(
                          padding: const EdgeInsets.only(left:8.0),
                          child: Row(
                            mainAxisAlignment:MainAxisAlignment.start,
                            children: [
                              SvgPicture.asset("assets/icons/slide.svg",height:19,),
                              const SizedBox(width:8,),
                              Column(
                                mainAxisAlignment:MainAxisAlignment.center,
                                crossAxisAlignment:CrossAxisAlignment.start,
                                children: [
                                  CustomText(text: "Jan 25 9 PM",fontSize:12,fontWeight:FontWeight.w700,),
                                  const SizedBox(height:4,),
                                  CustomText(text: "Latest Acceptable arrival",fontSize:10,fontWeight:FontWeight.w400,)
                                ],)
                            ],),
                        ),
                      ),
                    )
                  ],),
                  const SizedBox(height:28,),
                  AppButton(onPressed: (){
                    Navigator.pop(context);
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const ExactDestinationView()));
                  }, btnLabel: "Continue"),
                  const SizedBox(height:18,),
                ],
              );
            },
          ),
        );
      });
}
