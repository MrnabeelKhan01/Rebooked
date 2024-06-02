import 'package:flutter/material.dart';
import 'package:rebooked_app/configurations/frontend_configs.dart';
import 'package:rebooked_app/presentation/elements/app_button.dart';
import 'package:rebooked_app/presentation/elements/custom_text.dart';
import 'package:rebooked_app/presentation/elements/custom_textfield.dart';
import 'package:rebooked_app/presentation/view/lets_connect/layout/add_payment.dart';

import '../../../elements/custom_appbar.dart';

class HomeAddressView extends StatefulWidget {
  const HomeAddressView({super.key});

  @override
  State<HomeAddressView> createState() => _HomeAddressViewState();
}

class _HomeAddressViewState extends State<HomeAddressView> {
  List<String> list = <String>[
    'Alaska',
    'Arkansas',
    'Arizona',
  ];

  String dropdownValue = "Alaska";
  List<String> list1 = <String>[
    'Cordova',
    'Arkansas',
    'Arizona',
  ];

  String dropdownValue1 = "Cordova";

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:customAppBar(percentage: 0.2,context),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:18.0),
        child: Column(
          mainAxisAlignment:MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment:CrossAxisAlignment.start,
              children: [
                const SizedBox(height:8,),
              Text("Home address",style:FrontendConfigs.kAppHeadingStyle,),
                const SizedBox(height:10,),
              CustomText(text: "Your information will be kept safe and protected. Please add your credit card information."),
                const SizedBox(height:18,),
              CustomTextField(title: "Address 1", text: "Chalotte St", keyBoardType: TextInputType.text),
                const SizedBox(height:18,),
              CustomTextField(title: "Address 2", text: "Chalotte St", keyBoardType: TextInputType.text),
                const SizedBox(height:18,),
              CustomText(text: "State"),
              const SizedBox(
                height: 5,
              ),
              Container(
                height: 50,
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                    border: Border.all(color: FrontendConfigs.kAppBorderColor),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: DropdownButtonHideUnderline(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 14.0),
                      child: DropdownButton<String>(
                        borderRadius: BorderRadius.circular(10),
                        dropdownColor: Colors.white,
                        autofocus: true,
                        value: dropdownValue,
                        icon: const Icon(Icons.keyboard_arrow_down_outlined),
                        elevation: 2,
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                        onChanged: (String? value) {
                          // This is called when the user selects an item.
                          setState(() {
                            dropdownValue = value!;
                          });
                        },
                        items: list.map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            ),
                          );
                        }).toList(),
                      ),
                    )),
              ),
                const SizedBox(height:18,),
                Row(
                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                  children: [
                  Column(
                    crossAxisAlignment:CrossAxisAlignment.start,
                    children: [
                      CustomText(text: "City"),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: 50,
                        width: MediaQuery.sizeOf(context).width/2.3,
                        decoration: BoxDecoration(
                            border: Border.all(color: FrontendConfigs.kAppBorderColor),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: DropdownButtonHideUnderline(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 14.0),
                              child: DropdownButton<String>(
                                borderRadius: BorderRadius.circular(10),
                                dropdownColor: Colors.white,
                                autofocus: true,
                                value: dropdownValue1,
                                icon: const Icon(Icons.keyboard_arrow_down_outlined),
                                elevation: 2,
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                                onChanged: (String? value) {
                                  // This is called when the user selects an item.
                                  setState(() {
                                    dropdownValue1 = value!;
                                  });
                                },
                                items: list1.map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(
                                      value,
                                      style: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  );
                                }).toList(),
                              ),
                            )),
                      ),
                    ],
                  ),
                  SizedBox(
                    width:MediaQuery.sizeOf(context).width/2.3,
                      child: CustomTextField(title: "Zip", text: "123456", keyBoardType: TextInputType.number))
                ],)
            ],),
            Padding(
              padding: const EdgeInsets.only(bottom:18.0),
              child: AppButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const AddPaymentView()));
              }, btnLabel: "Continue"),
            )
          ],
        ),
      ),
    );
  }
}
