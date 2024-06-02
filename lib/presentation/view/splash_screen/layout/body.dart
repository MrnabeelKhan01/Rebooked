import 'dart:async';
import 'package:flutter/material.dart';
import 'package:rebooked_app/presentation/view/onboarding/onboarding_view.dart';


class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> {
  @override
  void initState() {
    Timer(
        const Duration(seconds: 3),
        () => Navigator.push(context,
            MaterialPageRoute(builder: (context) => const OnBoardingView())));
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width:MediaQuery.sizeOf(context).width,
      height:MediaQuery.sizeOf(context).height,
      decoration:const BoxDecoration(
        image:DecorationImage(image:AssetImage(
          "assets/images/splash_bg.png"
        ),
          fit:BoxFit.fill
        )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/logo.png",
            height:131,
          )
        ],
      ),
    );
  }
}
