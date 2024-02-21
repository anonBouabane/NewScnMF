import 'package:flutter/material.dart';
import 'package:microfinance/util/images.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      Images.LoGo,
      height: MediaQuery.of(context).size.height / 4,
      width: MediaQuery.of(context).size.width * 0.6,
    );
  }
}
