import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rebooked_app/presentation/view/basic_monitoring/layout/body.dart';

import '../../../configurations/frontend_configs.dart';
import '../../elements/custom_text.dart';
import '../default_trip/layout/widget/stepper.dart';

class BasicMonitoringView extends StatelessWidget {
  const BasicMonitoringView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        elevation:0,
        toolbarHeight: 60,
        backgroundColor: FrontendConfigs.kAppPrimaryColor,
        leading: Padding(
          padding:
          const EdgeInsets.only(bottom: 8, right: 8, top: 12, left: 8),
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
                padding: const EdgeInsets.all(12.0),
                child: SvgPicture.asset(
                  "assets/icons/back_icon.svg",
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        title: CustomText(
          text: 'Chicago ORD',
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: CustomText(
              text: "Tues, Nov. 21",
              color: Colors.white.withOpacity(0.8),
              fontSize: 13,
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
      body:const BasicMonitoringBody(),
    );
  }
}
