import 'package:flutter/material.dart';
import 'package:rebooked_app/configurations/frontend_configs.dart';
import 'package:rebooked_app/presentation/elements/custom_text.dart';

class CustomTextField extends StatefulWidget {
  CustomTextField({
    Key? key,
    this.controller,
    required this.title,
    required this.text,
    required this.keyBoardType,
  }) : super(key: key);
  final String text;
  final String title;
  final TextInputType keyBoardType;

  TextEditingController? controller;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: widget.title,
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
        const SizedBox(height:5,),
        TextFormField(
          style: const TextStyle(
              fontSize: 14, fontFamily: "Lato", fontWeight: FontWeight.w500),
          keyboardType: widget.keyBoardType,
          controller: widget.controller,
          decoration: InputDecoration(
            contentPadding:const EdgeInsets.all(14),
            hintText: widget.text,
            hintStyle: const TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontFamily: "Lato",
                fontWeight: FontWeight.w500),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: FrontendConfigs.kAppBorderColor)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: FrontendConfigs.kAppBorderColor)),
            fillColor: const Color(0xffffffff),
            filled: true,
          ),
        ),
      ],
    );
  }
}
