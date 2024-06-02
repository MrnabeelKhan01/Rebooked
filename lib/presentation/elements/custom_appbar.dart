import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

customAppBar(BuildContext context,{required double percentage,}){
  return AppBar(
leading:Padding(
  padding: const EdgeInsets.all(8.0),
  child:   InkWell(
    borderRadius:BorderRadius.circular(14),
    onTap:(){
      Navigator.pop(context);
    },
    child: Container(
      decoration:BoxDecoration(
        borderRadius:BorderRadius.circular(14),
        border:Border.all(color:Colors.black)
      ),
      child:Padding(
        padding: const EdgeInsets.all(11.0),
        child: SvgPicture.asset("assets/icons/back_icon.svg"),
      ),
    ),
  ),
),
    backgroundColor:Colors.transparent,
    elevation:0,
    centerTitle:true,
    title:Padding(
      padding: const EdgeInsets.only(left:38.0),
      child: LinearPercentIndicator(
        width:250,
        animation: true,
        lineHeight: 6.0,
        animationDuration: 2500,
        barRadius:const Radius.circular(100),
        backgroundColor:const Color(0xffE1E9EE),
        percent:percentage,
        linearStrokeCap: LinearStrokeCap.roundAll,
        progressColor: const Color(0xff4F55C1),
      ),
    ),
  );
}