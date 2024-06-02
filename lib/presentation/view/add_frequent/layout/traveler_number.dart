import 'package:flutter/material.dart';
import 'package:rebooked_app/presentation/elements/custom_appbar.dart';
import 'package:rebooked_app/presentation/elements/custom_textfield.dart';
import 'package:rebooked_app/presentation/view/default_trip/default_trip_view.dart';

import '../../../../configurations/frontend_configs.dart';
import '../../../elements/app_button.dart';
import '../../../elements/custom_text.dart';
import 'default_trip.dart';

class TravelerNumberView extends StatelessWidget {
  const TravelerNumberView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:customAppBar(percentage: 0.8,context),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:18.0),
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.start,
          children: [
            const SizedBox(height:8,),
          Text(
            "TSA Know Traveler Number",
            style: FrontendConfigs.kAppHeadingStyle,
          ),
          const SizedBox(height:10,),
          CustomText(
              text:
              "Enhance your travel experience and enjoy exclusive benefits & rewards on your upcoming flights."),
          const SizedBox(height:38,),
            CustomTextField(title: "Known travellor number", text: "4356f43", keyBoardType:TextInputType.number),
            const SizedBox(height:48,),
            AppButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>DefaultTripSettingView()));
            }, btnLabel: "Add known traveler number"),
            Row(
              mainAxisAlignment:MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () {},
                    child: CustomText(
                      text: 'Skip for now',
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: FrontendConfigs.kAppPrimaryColor,
                    )),
              ],
            )
        ],),
      ),
    );
  }
}
