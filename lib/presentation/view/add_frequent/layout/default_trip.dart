import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rebooked_app/presentation/elements/app_button.dart';
import 'package:rebooked_app/presentation/elements/custom_appbar.dart';
import 'package:rebooked_app/presentation/view/add_frequent/layout/allow_location.dart';

import '../../../../configurations/frontend_configs.dart';
import '../../../elements/custom_text.dart';
import 'bottom_sheet/rebook_mode.dart';
import 'bottom_sheet/spend_limit.dart';

class DefaultTripSettingView extends StatelessWidget {
  const DefaultTripSettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(percentage: 0.8,context),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 8,
            ),
            Text(
              "Default trip settings",
              style: FrontendConfigs.kAppHeadingStyle,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomText(
                text:
                    "Please select options as per your desire to get personalize experience"),
            const SizedBox(
              height: 38,
            ),
            _customCard(
                icon: "assets/icons/rebook_mode.svg",
                name: "Rebooking Mode",
                value: "Auto Accept",
                onPressed: () {
                  showRebookModeFlyer(context);
                }),
            const SizedBox(
              height: 18,
            ),
            _customCard(
                icon: "assets/icons/spend_limit.svg",
                name: "Spending Limit",
                value: "\$564",
                onPressed: () {
                  showSpendLimit(context);
                }),
            const SizedBox(
              height: 38,
            ),
            AppButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const AllowLocationAccessView()));
                },
                btnLabel: "Continue")
          ],
        ),
      ),
    );
  }

  Widget _customCard(
      {required String icon,
      required String name,
      required String value,
      required VoidCallback onPressed}) {
    return Container(
      height: 78,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: FrontendConfigs.kAppBorderColor)),
      child: Padding(
        padding: const EdgeInsets.only(left:8.0),
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
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset(icon),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                CustomText(
                  text: name,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                )
              ],
            ),
            Row(
              children: [
                CustomText(
                  text: value,
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                  color: FrontendConfigs.kAppPrimaryColor.withOpacity(0.6),
                ),
                IconButton(
                    onPressed: onPressed,
                    icon: SvgPicture.asset("assets/icons/arrow_farward.svg"))
              ],
            )
          ],
        ),
      ),
    );
  }
}
