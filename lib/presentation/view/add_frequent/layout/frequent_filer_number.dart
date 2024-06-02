import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rebooked_app/presentation/elements/custom_appbar.dart';
import 'package:rebooked_app/presentation/view/add_frequent/layout/select_air_line.dart';

import '../../../../configurations/frontend_configs.dart';
import '../../../elements/app_button.dart';
import '../../../elements/custom_text.dart';
import 'bottom_sheet/add_frequent_sheet.dart';

class FrequentFilerNumberView extends StatelessWidget {
  const FrequentFilerNumberView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:customAppBar(percentage: 0.4,context),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:18.0),
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.start,
          children: [
            const SizedBox(height:8,),
            Text(
              "Add Frequent Flyer ",
              style: FrontendConfigs.kAppHeadingStyle,
            ),
            const SizedBox(height:10,),
            CustomText(
                text:
                "Enhance your travel experience and enjoy exclusive benefits & rewards on your upcoming flights."),
            const SizedBox(height:38,),
            Row(
              mainAxisAlignment:MainAxisAlignment.center,
              children: [
                SvgPicture.asset("assets/images/plan.svg"),
              ],
            ),
            const SizedBox(height:48,),
            AppButton(onPressed: (){
              showAddFrequentFlyer(context);
            }, btnLabel: "Add frequent flyer"),
            Row(
              mainAxisAlignment:MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> SelectAirLineView()));
                    },
                    child: CustomText(
                      text: 'Skip for now',
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: FrontendConfigs.kAppPrimaryColor,
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
