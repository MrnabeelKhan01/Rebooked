import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../configurations/frontend_configs.dart';
import 'custom_text.dart';

class AppCustomCard extends StatelessWidget {
  AppCustomCard(
      {super.key, required this.icon, required this.name, required this.value,required this.onPressed});

  final String icon;
  final String name;
  final String value;
  VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
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
