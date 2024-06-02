import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rebooked_app/configurations/frontend_configs.dart';
import 'package:rebooked_app/presentation/elements/custom_text.dart';

import 'layout/body.dart';

class PrivacyPolicyView extends StatelessWidget {
  const PrivacyPolicyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: FrontendConfigs.kAppPrimaryColor,
        leading: Padding(
          padding:
              const EdgeInsets.only(bottom: 14, right: 8, top: 14, left: 8),
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              height: 48,
              width: 48,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(color: Colors.white)),
              child: Padding(
                padding: const EdgeInsets.all(11.0),
                child: SvgPicture.asset(
                  "assets/icons/back_icon.svg",
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        title: CustomText(
          text: 'Terms & Conditions',
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ),
      body: const PrivacyPolicyBody(),
    );
  }
}
