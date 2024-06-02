import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rebooked_app/presentation/elements/app_card.dart';
import 'package:rebooked_app/presentation/view/extact_distination/exact_distination_view.dart';

import '../../../../configurations/frontend_configs.dart';
import '../../../elements/custom_text.dart';
import 'bottom_sheet/arrival_window.dart';

class DefaultTripBody extends StatelessWidget {
  const DefaultTripBody({super.key});

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.symmetric(horizontal:18.0),
      child: Column(
        crossAxisAlignment:CrossAxisAlignment.start,
        children: [
          const SizedBox(height:18,),
          AppCustomCard(icon: "assets/icons/location_icon.svg", name: "Exact Destination", value:"Select", onPressed: (){
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                    const ExactDestinationView()));
          }),
          const SizedBox(height:18,),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: FrontendConfigs.kAppBorderColor)),
          child: Padding(
            padding: const EdgeInsets.only(left:12.0,bottom:12),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment:CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Container(
                            height: 48,
                            width: 48,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: const Color(0xff003366).withOpacity(0.10)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset("assets/icons/arrive.png"),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        CustomText(
                          text: "Arrival Window",
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ],
                    ),
                    IconButton(
                        onPressed: (){
                          showArrivalWindowSheet(context);
                        },
                        icon: SvgPicture.asset("assets/icons/arrow_farward.svg"))
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right:18.0,left:58),
                  child: Column(
                    crossAxisAlignment:CrossAxisAlignment.start,
                    mainAxisAlignment:MainAxisAlignment.start,
                    children: [

                      Row(
                        mainAxisAlignment:MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(text: "Desired arrival by:",fontSize:12,fontWeight:FontWeight.w500,),
                          CustomText(text: "24 jan 8:30 PM",color:Colors.black,fontSize:12,fontWeight:FontWeight.w600,)
                        ],),
                      Row(
                        mainAxisAlignment:MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(text: "latest acceptable arrival",fontSize:12,fontWeight:FontWeight.w500,),
                          CustomText(text: "24 jan 8:30 PM",color:Colors.black,fontSize:12,fontWeight:FontWeight.w600,)
                        ],)
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
          const SizedBox(height:18,),
          AppCustomCard(icon: "assets/icons/rebook_mode.svg", name: "Rebooking Mode", value:"Auto Accept", onPressed: (){}),
          const SizedBox(height:18,),
          AppCustomCard(icon: "assets/icons/spend_limit.svg", name: "Spending limit", value:"\$564", onPressed: (){}),
      ],),
    );
  }
}
