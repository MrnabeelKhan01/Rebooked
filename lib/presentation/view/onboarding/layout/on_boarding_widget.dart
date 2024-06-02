import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../configurations/frontend_configs.dart';
import '../../../elements/custom_text.dart';

class SliderPage extends StatelessWidget {
  const SliderPage({
    Key? key,
    required this.svg,
    required this.body,
    required this.title,
  }) : super(key: key);
  final String svg;
  final String body;
  final String title;


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
              height: 325,
              child: SvgPicture.asset(
                svg,
              )),
          const SizedBox(
            height: 38,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(
                text: title,
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ],
          ),
          const SizedBox(
            height: 4,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:16.0),
            child: CustomText(
              textAlign:TextAlign.center,
              text: body,
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: const Color(0xff4F4F4F),
            ),
          ),
        ],
      ),
    );
  }
}
