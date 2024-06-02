import 'package:flutter/material.dart';
import 'package:rebooked_app/configurations/frontend_configs.dart';
import 'package:rebooked_app/presentation/elements/app_button.dart';
import 'package:rebooked_app/presentation/elements/custom_text.dart';

import '../../../elements/custom_textfield.dart';

class AddCreditCardView extends StatefulWidget {
  const AddCreditCardView({super.key});

  @override
  State<AddCreditCardView> createState() => _AddCreditCardViewState();
}

class _AddCreditCardViewState extends State<AddCreditCardView> {
  bool _value=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height:160,
              color:const Color(0xff000000).withOpacity(0.6),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:18.0),
              child: Column(
                crossAxisAlignment:CrossAxisAlignment.start,
                children: [
                  const SizedBox(height:18,),
                  Text(
                    "Add Credit card",
                    style: FrontendConfigs.kAppHeadingStyle,
                  ),
                  const SizedBox(height:10,),
                  CustomText(
                      text:
                          "Your information will be kept safe and protected. Please add your credit card information."),
                  const SizedBox(height:10,),
                  CustomTextField(title: "Card holder name", text: "kyle", keyBoardType: TextInputType.text),
                  const SizedBox(height:18,),
                  CustomTextField(title: "Card number", text: "5424 7893 8976", keyBoardType: TextInputType.text),
                  const SizedBox(height:18,),
                  Row(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                          width:MediaQuery.sizeOf(context).width/2.3,
                          child: CustomTextField(title: "Expiry date", text: "13/2027", keyBoardType: TextInputType.number)),
                      SizedBox(
                          width:MediaQuery.sizeOf(context).width/2.3,
                          child: CustomTextField(title: "Zip", text: "123456", keyBoardType: TextInputType.number))
                    ],),
                  const SizedBox(height:38,),
                  Row(
                    children: [

                      InkWell(
                        borderRadius: BorderRadius.circular(7),
                        onTap: () {
                          setState(() {
                            _value = !_value;
                          });
                        },
                        child: Container(
                            height: 24,
                            width: 24,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                border: Border.all(
                                    color: FrontendConfigs.kAppPrimaryColor)),
                            child: _value
                                ? Icon(
                              Icons.check,
                              size: 20.0,
                              color: FrontendConfigs.kAppPrimaryColor,
                            )
                                : const SizedBox()),
                      ),
                      const SizedBox(width:8,),
                      Expanded(
                        child: RichText(
                          text: TextSpan(
                              text: "Make Default Card? ",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black.withOpacity(0.70),
                                  fontFamily:"Lato"
                              )
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height:18,),
                  AppButton(onPressed: (){}, btnLabel:"Continue")
                ],),
            ),
          ],
        ),
      ),
    );
  }
}
