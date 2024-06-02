import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rebooked_app/presentation/elements/app_button.dart';
import 'package:rebooked_app/presentation/elements/custom_appbar.dart';

import '../../../../configurations/frontend_configs.dart';
import '../../../elements/custom_text.dart';
import 'traveler_number.dart';

class SelectAirLineView extends StatelessWidget {
  SelectAirLineView({super.key});
final List<String> _list=[
  "assets/images/jetblue.png",
  "assets/images/dalta.png",
  "assets/images/air.png",
  "assets/images/american.png",
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:customAppBar(percentage: 0.6,context),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height:8,),
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
            GridView.builder(
                shrinkWrap:true,
                physics:const NeverScrollableScrollPhysics(),
                itemCount:4,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing:20,
                    mainAxisSpacing:20,
                    crossAxisCount: 2),
                itemBuilder: (context, i) {
                  return _selectAirLine(
                      logo:_list[i], number: "25123r4");
                }),
            const SizedBox(height:38,),
            AppButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const TravelerNumberView()));
            }, btnLabel: "Continue"),
            Row(
              mainAxisAlignment:MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () {},
                    child: CustomText(
                      text: 'Add another number',
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

  Widget _selectAirLine({
    required String logo,
    required String number,
  }) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: FrontendConfigs.kAppBorderColor)),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.start,
          mainAxisAlignment:MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment:CrossAxisAlignment.start,
              mainAxisAlignment:MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  logo,
                  height:60,
                ),
                SvgPicture.asset(
                  "assets/icons/card_close.svg",
                  color: Colors.black,
                  height: 20,
                )
              ],
            ),
            Column(
              crossAxisAlignment:CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: "Frequent Flyer No",
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),
                const SizedBox(height:5,),
                CustomText(
                  text: number,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                )
              ],
            ),

          ],
        ),
      ),
    );
  }
}
