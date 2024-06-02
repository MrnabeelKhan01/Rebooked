import 'package:country_picker/country_picker.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rebooked_app/configurations/frontend_configs.dart';
import 'package:rebooked_app/presentation/elements/app_button.dart';
import 'package:rebooked_app/presentation/elements/custom_text.dart';
import 'package:rebooked_app/presentation/view/lets_connect/layout/home_address.dart';
import 'package:rebooked_app/presentation/view/privacy_policy/privacy_policy_view.dart';

import '../../../elements/custom_textfield.dart';

class LetsConnectBody extends StatefulWidget {
  const LetsConnectBody({super.key});

  @override
  State<LetsConnectBody> createState() => _LetsConnectBodyState();
}

class _LetsConnectBodyState extends State<LetsConnectBody> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _middleNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _countryController = TextEditingController();
  List<String> list = <String>[
    'Male',
    'Female',
    'Other',
  ];
  String dropdownValue = "Male";

  @override
  void initState() {
    _country = Country(
        phoneCode: "92",
        countryCode: "PK",
        e164Sc: 234,
        geographic: true,
        level: 234,
        name: "name",
        displayName: "Pakistan",
        e164Key: "",
        example: '',
        displayNameNoCountryCode: '');
    super.initState();
  }

  Country? _country;
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height:8,),
            Text(
              "Let's Connect!",
              style: FrontendConfigs.kAppHeadingStyle,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomText(
                text:
                    "Share your personal info to enhance your app experience."),
            const SizedBox(
              height: 28,
            ),
            CustomTextField(
              title: 'First name',
              text: 'kyle',
              keyBoardType: TextInputType.text,
              controller: _nameController,
            ),
            const SizedBox(
              height: 18,
            ),
            CustomTextField(
              title: 'Middle name',
              text: 'Mico',
              keyBoardType: TextInputType.text,
              controller: _middleNameController,
            ),
            const SizedBox(
              height: 18,
            ),
            CustomTextField(
              title: 'Last name',
              text: 'loundn',
              keyBoardType: TextInputType.text,
              controller: _lastNameController,
            ),
            const SizedBox(
              height: 18,
            ),
            CustomTextField(
              title: 'Email address',
              text: 'loundn',
              keyBoardType: TextInputType.emailAddress,
              controller: _emailController,
            ),
            const SizedBox(
              height: 18,
            ),
            CustomText(text: "Phone number"),
            const SizedBox(
              height: 5,
            ),
            SizedBox(
                height: 50,
                child: TextFormField(
                    keyboardType: TextInputType.number,
                    controller: _countryController,
                    decoration: InputDecoration(
                        hintText: "8143519204",
                        hintStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            letterSpacing: 1,
                            fontFamily: "Lato",
                            fontWeight: FontWeight.w500),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                color: Colors.black.withOpacity(0.10))),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                color: Colors.black.withOpacity(0.10))),
                        fillColor: const Color(0xffffffff),
                        filled: true,
                        prefixIcon: SizedBox(
                          child: InkWell(
                            onTap: () {
                              showCountryPicker(
                                showSearch: false,
                                context: context,
                                showPhoneCode: true,
                                countryListTheme: CountryListThemeData(
                                  flagSize: 25,
                                  backgroundColor: const Color(0xffF3F3F3),
                                  textStyle: TextStyle(
                                      color: FrontendConfigs.kAppSecondaryColor,
                                      fontSize: 14,
                                      letterSpacing: 1,
                                      fontFamily: "Lato",
                                      fontWeight: FontWeight.w400),
                                  bottomSheetHeight: 500,
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(20.0),
                                    topRight: Radius.circular(20.0),
                                  ),
                                  //Optional. Styles the search field.
                                ),
                                onSelect: (Country country) {
                                  _country = country;
                                  setState(() {});
                                  print(
                                      'Select country: ${country.displayName}');
                                },
                              );
                            },
                            child: Padding(
                                padding: const EdgeInsets.only(left: 12),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      "+${_country!.phoneCode}",
                                      style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 12,
                                    ),
                                    Container(
                                      height: 15,
                                      width: 1,
                                      color: Colors.black.withOpacity(0.10),
                                    ),
                                    const SizedBox(
                                      width: 12,
                                    ),
                                  ],
                                )),
                          ),
                        )))),
            const SizedBox(
              height: 18,
            ),
            CustomText(text: "Gender"),
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
            const SizedBox(
              height: 18,
            ),
            CustomText(
              text: "Date of birth",
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
            const SizedBox(
              height: 5,
            ),
            TextFormField(
              style: const TextStyle(
                  fontSize: 14,
                  fontFamily: "Lato",
                  fontWeight: FontWeight.w500),
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(14),
                  hintText: "25 june 1998",
                  hintStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: "Lato",
                      fontWeight: FontWeight.w500),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          BorderSide(color: FrontendConfigs.kAppBorderColor)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                      BorderSide(color: FrontendConfigs.kAppBorderColor)),
                  fillColor: const Color(0xffffffff),
                  filled: true,
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: SvgPicture.asset("assets/icons/date_icon.svg"),
                  )),
            ),
            const SizedBox(height:18,),
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
                        text: "By signing up you agree to our ",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.black.withOpacity(0.70),
                            fontFamily:"Lato"
                        ),children: [
                      TextSpan(
                        recognizer: TapGestureRecognizer()..onTap = () {
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>const PrivacyPolicyView()));
                        },
                        text: "Terms  & Conditions",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: FrontendConfigs.kAppPrimaryColor,
                            fontFamily:"Lato"
                        ),)
                    ]
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height:18,),
            AppButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomeAddressView()));
            }, btnLabel: "Continue"),
            const SizedBox(height:18,),
          ],
        ),
      ),
    );
  }
}
