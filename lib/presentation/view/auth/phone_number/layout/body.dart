import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:rebooked_app/presentation/elements/custom_text.dart';
import 'package:rebooked_app/presentation/view/auth/verify_number/verify_number_view.dart';

import '../../../../../configurations/frontend_configs.dart';
import '../../../../elements/app_button.dart';

class PhoneNumberBody extends StatefulWidget {
  const PhoneNumberBody({super.key});

  @override
  State<PhoneNumberBody> createState() => _PhoneNumberBodyState();
}

class _PhoneNumberBodyState extends State<PhoneNumberBody> {
  final TextEditingController _countryController = TextEditingController();

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

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const SizedBox(
          height: 18,
        ),
        Text(
          "Enter phone number",
          style: FrontendConfigs.kAppHeadingStyle,
        ),
        const SizedBox(
          height: 8,
        ),
        CustomText(
            text:
                "We will send a 6 digit verificaion code to your phone number for authetication."),
        const SizedBox(
          height: 28,
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
                        borderSide:
                            BorderSide(color: Colors.black.withOpacity(0.10))),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            BorderSide(color: Colors.black.withOpacity(0.10))),
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
                                  color: FrontendConfigs.kAppPrimaryColor,
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
                              print('Select country: ${country.displayName}');
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
          height: 38,
        ),
        AppButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const VerifyNumberView()));
          },
          btnLabel: 'Continue',
        )
      ]),
    );
  }
}
