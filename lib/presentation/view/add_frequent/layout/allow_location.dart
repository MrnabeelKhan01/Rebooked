import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rebooked_app/presentation/elements/custom_appbar.dart';
import 'package:rebooked_app/presentation/view/bottom_bar/bottom_bar_view.dart';

import '../../../../configurations/frontend_configs.dart';
import '../../../elements/app_button.dart';
import '../../../elements/custom_text.dart';

class AllowLocationAccessView extends StatelessWidget {
  const AllowLocationAccessView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:customAppBar(percentage: 1,context),
      body: Column(
        mainAxisAlignment:MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:18.0),
            child: Column(
              crossAxisAlignment:CrossAxisAlignment.start,
              children: [
                const SizedBox(height:8,),
              Text(
                "Allow location",
                style: FrontendConfigs.kAppHeadingStyle,
              ),
              const SizedBox(height:10,),
              CustomText(
                  text:
                  "It is a long established fact that a reader will be distracted by the readable content."),


            ],),
          ),
          Stack(children: [
            SvgPicture.asset("assets/images/location_access.svg"),
            Positioned(
              bottom:20,
                child: Row(
                  mainAxisAlignment:MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:18.0),
                      child: AppButton(
                        width:MediaQuery.sizeOf(context).width/1.11,
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomBarView()));
                        }, btnLabel: 'Grant access to location',),
                    ),
                  ],
                )),
          ],)
        ],
      ),
    );
  }
}
