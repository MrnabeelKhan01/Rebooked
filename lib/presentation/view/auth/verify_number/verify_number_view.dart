import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'layout/body.dart';

class VerifyNumberView extends StatelessWidget {
  const VerifyNumberView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.transparent,
        elevation:0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap:(){
              Navigator.pop(context);
            },
            child: Container(
              height:48,
              width: 48,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(color: Colors.black)),
              child:Padding(
                padding: const EdgeInsets.all(11.0),
                child: SvgPicture.asset("assets/icons/back_icon.svg"),
              ),
            ),
          ),
        ),
      ),
      body:VerifyNumberBody(),
    );
  }
}
