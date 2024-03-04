import 'package:flutter/material.dart';
import 'package:microfinance/util/Appcontants.dart';
import 'package:microfinance/util/Textstyle.dart';
import 'package:microfinance/util/images.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          Images.LoGo,
          height: MediaQuery.of(context).size.height / 4,
          width: MediaQuery.of(context).size.width * 0.6,
        ),
        Text(Appconstants.title,style: textTitle,),
        Text(Appconstants.subtitle,style: textSubTitle,)
      ],
    );
  }
}
