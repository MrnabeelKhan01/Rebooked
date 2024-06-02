import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rebooked_app/configurations/frontend_configs.dart';
import 'package:rebooked_app/presentation/elements/app_button.dart';
import 'package:rebooked_app/presentation/elements/custom_appbar.dart';
import 'package:rebooked_app/presentation/elements/custom_text.dart';

import '../bottom_sheet/add_credict_card.dart';

class AddPaymentView extends StatelessWidget {
  const AddPaymentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:customAppBar(percentage: 0.35,context),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:18.0),
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.start,
          children: [
            const SizedBox(height:8,),
            Text(
              "Add payment method",
              style: FrontendConfigs.kAppHeadingStyle,
            ),
            const SizedBox(height:10,),
            CustomText(
                text:
                    "Your information will be kept safe and protected. Please add your credit card information"),
            const SizedBox(height:38,),
            Row(
              mainAxisAlignment:MainAxisAlignment.center,
              children: [
                SvgPicture.asset("assets/images/payment.svg"),
              ],
            ),
            const SizedBox(height:48,),
            AppButton(onPressed: (){
              showAddCredictCardSheet(context);
            }, btnLabel: "Add Credit Card"),
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
          ],
        ),
      ),
    );
  }
}
