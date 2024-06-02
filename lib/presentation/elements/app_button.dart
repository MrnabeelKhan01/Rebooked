import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  VoidCallback onPressed;
  String btnLabel;
  double width;
  double height;
  Color ?color;
  Color ?textColor;
  double ?textSize;
  FontWeight ?fontWeight;

  AppButton(
      {super.key, required this.onPressed,
        required this.btnLabel,
        this.color,
        this.textSize=15,
        this.fontWeight=FontWeight.w600,
        this.textColor=Colors.white,
        this.width = double.infinity,
        this.height = 50});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation:2,
          primary:color ?? const Color(0xff003366),
          fixedSize: Size(width, height),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          )),
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            btnLabel,
            style:  TextStyle(
              color:textColor!,
              fontWeight:fontWeight,
              fontFamily:"Lato",
              fontSize: textSize!,
            ),
          ),
        ],
      ),
    );
  }
}
