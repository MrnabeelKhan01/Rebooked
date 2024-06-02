import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class CustomStepper extends StatelessWidget {
  const CustomStepper({super.key, required this.width});
final double width;
  @override
  Widget build(BuildContext context) {
    return     Padding(
      padding: const EdgeInsets.symmetric(horizontal:8.0),
      child: Column(
        children: [
          Stack(
            clipBehavior:Clip.none,
            children: [
              FittedBox(

                child: Row(
                  mainAxisAlignment:MainAxisAlignment.start,
                  children: [
                    LinearPercentIndicator(
                      padding:EdgeInsets.zero,
                      width: width,
                      animation: true,
                      lineHeight: 8.0,
                      animationDuration: 2500,
                      linearGradient:const LinearGradient(colors: [
                        Color(0xff4F55C1),
                        Color(0xff446DC0),
                        Color(0xff3487BD),
                      ],
                        begin:Alignment.centerLeft,
                        end: Alignment.centerRight
                      ),
                      percent: 0.7,
                      linearStrokeCap: LinearStrokeCap.roundAll,
                    ),
                  ],
                ),
              ),
            Positioned(
              bottom:-12,
                child: SizedBox(
                 width: width,
                  child: Row(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(width:20,),
                      SvgPicture.asset("assets/icons/stepper.svg"),
                      SvgPicture.asset("assets/icons/stepper_one.svg"),
                    ],
                  ),
                ))
            ],
          ),
        ],
      ),
    );
  }
}
