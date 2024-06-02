import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rebooked_app/configurations/frontend_configs.dart';
import 'package:rebooked_app/presentation/elements/app_button.dart';
import 'package:rebooked_app/presentation/elements/custom_appbar.dart';
import 'package:rebooked_app/presentation/elements/custom_text.dart';
import 'package:rebooked_app/presentation/view/lets_connect/layout/add_credict_card.dart';

import 'frequent_filer_number.dart';

class FilerNumberView extends StatelessWidget {
  const FilerNumberView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:customAppBar(percentage: 0.3,context),
      bottomNavigationBar:Column(
        mainAxisSize:MainAxisSize.min,
        children: [
        Container(
          decoration:const BoxDecoration(
            color:Colors.white,
            boxShadow: [
              BoxShadow(
                color:Colors.white10,
                offset:Offset(0, -4),
                blurRadius:8
              ),
            ]
          ),
          child:Padding(
            padding: const EdgeInsets.symmetric(horizontal:18.0),
            child: Column(children: [
              const SizedBox(height:18,),
              AppButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>FrequentFilerNumberView()));
              }, btnLabel: "Continue"),
              Row(
                mainAxisAlignment:MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: CustomText(
                        text: 'Add another Credit card',
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: FrontendConfigs.kAppPrimaryColor,
                      )),
                ],
              )

            ],),
          ),
        )
      ],),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment:CrossAxisAlignment.start,
            children: [
              const SizedBox(height:8,),
            Text("My Payment Methods",style:FrontendConfigs.kAppHeadingStyle,),
            const SizedBox(height:8,),
            CustomText(text: "Your information will be kept safe and protected. Please add your credit card information"),
            const SizedBox(height:38,),
            Container(
              decoration:BoxDecoration(
                borderRadius:BorderRadius.circular(7),
                border:Border.all(color:FrontendConfigs.kAppBorderColor)
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 10.0,right:6,left:6),
                child: Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Image.asset("assets/images/visa_card.png"),
                        Positioned.fill(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 18.0,right:18,bottom:28,top:18),
                            child: Column(
                              crossAxisAlignment:CrossAxisAlignment.start,
                              mainAxisAlignment:MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                  children: [
                                  SvgPicture.asset("assets/icons/visa.svg"),
                                  SvgPicture.asset("assets/icons/card_close.svg"),
                                ],),
                                CustomText(text: "**** **** **** 5626",fontSize:20,fontWeight:FontWeight.w600,color:Colors.white,),
                                Row(
                                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                  children: [
                                  Column(children: [
                                    CustomText(text: "card holder".toUpperCase(),color:Colors.white,fontSize:8,),
                                    CustomText(text: "Kyle mico",fontWeight:FontWeight.w600,color:Colors.white,)
                                  ],),
                                  Column(children: [
                                    CustomText(text: "Expires".toUpperCase(),color:Colors.white,fontSize:8,),
                                    CustomText(text: "08/27",fontWeight:FontWeight.w600,color:Colors.white,)
                                  ],)
                                ],)
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment:CrossAxisAlignment.start,
                        children: [
                        CustomText(text: "Billing address",fontSize:15,fontWeight:FontWeight.w600,),
                        CustomText(text: "132, My Street, Kingston, New York 12401.",fontSize:13,fontWeight:FontWeight.w500,),
                      ],),
                    )
                  ],
                ),
              ),
            ),
              const SizedBox(height:18,),
              Container(
                decoration:BoxDecoration(
                    borderRadius:BorderRadius.circular(7),
                    border:Border.all(color:FrontendConfigs.kAppBorderColor)
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0,right:6,left:6),
                  child: Column(
                    crossAxisAlignment:CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Image.asset("assets/images/visa_card.png"),
                          Positioned.fill(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 18.0,right:18,bottom:28,top:18),
                              child: Column(
                                crossAxisAlignment:CrossAxisAlignment.start,
                                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                    children: [
                                      SvgPicture.asset("assets/icons/visa.svg"),
                                      SvgPicture.asset("assets/icons/card_close.svg"),
                                    ],),
                                  CustomText(text: "**** **** **** 5626",fontSize:20,fontWeight:FontWeight.w600,color:Colors.white,),
                                  Row(
                                    mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(children: [
                                        CustomText(text: "card holder".toUpperCase(),color:Colors.white,fontSize:8,),
                                        CustomText(text: "Kyle mico",fontWeight:FontWeight.w600,color:Colors.white,)
                                      ],),
                                      Column(children: [
                                        CustomText(text: "Expires".toUpperCase(),color:Colors.white,fontSize:8,),
                                        CustomText(text: "08/27",fontWeight:FontWeight.w600,color:Colors.white,)
                                      ],)
                                    ],)
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment:CrossAxisAlignment.start,
                          children: [
                            CustomText(text: "Billing address",fontSize:15,fontWeight:FontWeight.w600,),
                            CustomText(text: "132, My Street, Kingston, New York 12401.",fontSize:13,fontWeight:FontWeight.w500,),
                          ],),
                      )
                    ],
                  ),
                ),
              )
          ],),
        ),
      ),
    );
  }
}
