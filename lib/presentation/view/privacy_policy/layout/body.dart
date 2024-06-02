import 'package:flutter/material.dart';
import 'package:rebooked_app/configurations/frontend_configs.dart';
import 'package:rebooked_app/presentation/elements/app_button.dart';
import 'package:rebooked_app/presentation/elements/custom_text.dart';
import 'package:rebooked_app/presentation/view/lets_connect/layout/home_address.dart';

class PrivacyPolicyBody extends StatelessWidget {
  const PrivacyPolicyBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            Text(
              "Heading",
              style: FrontendConfigs.kAppHeadingStyle,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomText(
              text:
                  "It is a long established fact that a reader will be distracted by "
                  "the readable content of a page when looking at its layout. "
                  "It is a long established fact that a reader will be distracted by "
                  "the readable content of a page when looking at its layout.",
            ),
            const SizedBox(
              height: 18,
            ),
            CustomText(
                text:
                    "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. It is a long established fact that "
                    "a reader will be distracted by the readable content of a page when looking at its layout."),
            const SizedBox(
              height: 18,
            ),
            CustomText(
                text:
                    "It is a long established fact that a reader will be distracted by the readable"
                    " content of a page when looking at its layout. It is a long established fact that a reader "
                    "will be distracted by the readable content of a page when looking at its layout."),
            const SizedBox(
              height: 18,
            ),
            CustomText(
                text: "It is a long established fact that a reader will "
                    "be distracted by the readable content of a page when looking "
                    "at its layout. It is a long established fact that a reader will"
                    " be distracted by the readable content of a page when looking at its layout."),
            const SizedBox(height:28,),
            AppButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomeAddressView()));
                }, btnLabel: "i agree to terms & conditions"),
            Row(
              mainAxisAlignment:MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: CustomText(
                      text: 'Decline',
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
