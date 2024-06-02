import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:rebooked_app/presentation/view/lets_connect/lets_connect_view.dart';

import '../../../../../configurations/frontend_configs.dart';
import '../../../../elements/app_button.dart';
import '../../../../elements/custom_text.dart';

class VerifyNumberBody extends StatefulWidget {
  const VerifyNumberBody({super.key});

  @override
  State<VerifyNumberBody> createState() => _VerifyNumberBodyState();
}

class _VerifyNumberBodyState extends State<VerifyNumberBody> {
  TextEditingController controller = TextEditingController();

  final defaultPinTheme = PinTheme(
    width: 47,
    height: 47,
    textStyle: const TextStyle(
        fontFamily: "Lato",
        fontSize: 24,
        color: Color(0xff000000),
        fontWeight: FontWeight.w500),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: FrontendConfigs.kAppBorderColor, width: 0.5)),
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 18,
          ),
          Text(
            "Verfiy phone number",
            style: FrontendConfigs.kAppHeadingStyle,
          ),
          const SizedBox(
            height: 8,
          ),
          CustomText(text: "Please enter the 6 digit code you just received."),
          const SizedBox(
            height: 38,
          ),
          Center(
            child: Pinput(
              controller: controller,
              pinAnimationType: PinAnimationType.slide,
              obscureText: false,
              preFilledWidget: Text(
                '-',
                style: TextStyle(
                    fontSize: 20,
                    color: FrontendConfigs.kAppBorderColor,
                    fontWeight: FontWeight.w600),
              ),
              length: 6,
              defaultPinTheme: defaultPinTheme.copyDecorationWith(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              focusedPinTheme: defaultPinTheme.copyDecorationWith(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: FrontendConfigs.kAppPrimaryColor)),
              submittedPinTheme: defaultPinTheme.copyWith(
                decoration: defaultPinTheme.decoration!.copyWith(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              validator: (s) {
                return s == '2222' ? null : 'Pin is incorrect';
              },
              pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
              showCursor: true,
              onCompleted: (pin) => print(pin),
              onChanged: (String) {
                setState(() {
                  controller;
                });
              },
            ),
          ),
          const SizedBox(
            height: 38,
          ),
          AppButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const LetsConnectView()));
            },
            btnLabel: 'Continue',
          ),
          const SizedBox(height:18,),
          Row(
            mainAxisAlignment:MainAxisAlignment.center,
            children: [
              RichText(
                  text: TextSpan(
                      text: "Didn't receive a code? ",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.black.withOpacity(0.70),
                        fontFamily:"Lato"
                      ),children: [
                      TextSpan(
                      text: "Resend code.",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: FrontendConfigs.kAppPrimaryColor,
                          fontFamily:"Lato"
                      ),)
                  ]
                  ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
