import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rebooked_app/configurations/frontend_configs.dart';
import 'package:rebooked_app/presentation/elements/app_card.dart';
import 'package:rebooked_app/presentation/elements/custom_text.dart';
import 'package:rebooked_app/presentation/view/add_frequent/layout/frequent_filer_number.dart';
import 'package:rebooked_app/presentation/view/add_frequent/layout/select_air_line.dart';
import 'package:rebooked_app/presentation/view/default_trip/default_trip_view.dart';
import 'package:rebooked_app/presentation/view/lets_connect/layout/add_payment.dart';
import 'package:rebooked_app/presentation/view/lets_connect/layout/billing_address.dart';
import 'package:rebooked_app/presentation/view/lets_connect/layout/home_address.dart';

import '../../add_frequent/layout/default_trip.dart';
import '../../add_frequent/layout/filer_number.dart';
import 'bottom_sheet/add_profile.dart';
import 'bottom_sheet/logout_sheet.dart';
import 'bottom_sheet/profile_created.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal:18.0),
      child: SafeArea(
        child: Column(children: [
          Row(
            mainAxisAlignment:MainAxisAlignment.end,
            children: [
            IconButton(onPressed: (){
              showLogOutSheet(context);
            }, icon:SvgPicture.asset("assets/icons/log_out.svg")),
            CustomText(text: "Logout",color:const Color(0xffE03A3E),),

          ],),
          Column(children: [
            const CircleAvatar(
              radius:50,
              backgroundImage:AssetImage("assets/images/profile.png"),
            ),
            const SizedBox(height:8,),
            InkWell(
              onTap:(){},
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: SizedBox(
                  width:160,
                  child: Row(
                    mainAxisAlignment:MainAxisAlignment.center,
                    children: [
                      CustomText(text: "John kyle mico",fontSize:18,fontWeight:FontWeight.w700,),
                      const Icon(Icons.keyboard_arrow_down_rounded)
                    ],
                  ),
                ),
              ),
            ),
            CustomText(text: "Dummyemail@gmail.com",fontSize:14,),

          ],),
          const SizedBox(height:18,),
          Row(
            mainAxisAlignment:MainAxisAlignment.spaceBetween,
            children: [
            InkWell(
              borderRadius:BorderRadius.circular(7),
              onTap:(){
                showAddProfileSheet(context);
              },
              child: Container(
                height:40,
                width:MediaQuery.sizeOf(context).width/2.4,
                decoration:BoxDecoration(
                  borderRadius:BorderRadius.circular(7),
                  border:Border.all(color:FrontendConfigs.kAppPrimaryColor)
                ),
                child:Row(
                  mainAxisAlignment:MainAxisAlignment.center,
                  children: [
                  CustomText(text: "Add work profile",fontSize:13,)
                ],),
              ),
            ),
            InkWell(
              borderRadius:BorderRadius.circular(7),
              onTap:(){
                showProfileCreatedSheet(context);
              },
              child: Container(
                height:40,
                width:MediaQuery.sizeOf(context).width/2.4,
                decoration:BoxDecoration(
                  color:FrontendConfigs.kAppPrimaryColor,
                    borderRadius:BorderRadius.circular(7),
                    border:Border.all(color:FrontendConfigs.kAppPrimaryColor)
                ),
                child:Row(
                  mainAxisAlignment:MainAxisAlignment.center,
                  children: [
                    CustomText(text: "Edit profile",fontSize:13,color:Colors.white,)
                  ],),
              ),
            )
          ],),
          const SizedBox(height:18,),
          AppCustomCard(icon: "assets/icons/home.svg", name:"Home address", value: "", onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomeAddressView()));
          }),
          const SizedBox(height:18,),
          AppCustomCard(icon: "assets/icons/payment.svg", name:"Payment Details", value: "", onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const FilerNumberView()));
          }),
          const SizedBox(height:18,),
          AppCustomCard(icon: "assets/icons/flyer.svg", name:"Frequent Flyer Number", value: "", onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> SelectAirLineView()));
          }),
          const SizedBox(height:18,),
        Container(
          height: 78,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: FrontendConfigs.kAppBorderColor)),
          child: Padding(
            padding: const EdgeInsets.only(left:12.0),
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
                          color: const Color(0xff003366).withOpacity(0.10)),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image.asset("assets/icons/default.png"),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    CustomText(
                      text: "default trip settings",
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    )
                  ],
                ),
                IconButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const DefaultTripSettingView()));
                    },
                    icon: SvgPicture.asset("assets/icons/arrow_farward.svg"))
              ],
            ),
          ),
        )
        ],),
      ),
    );
  }
}
