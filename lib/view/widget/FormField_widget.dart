// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

import 'package:microfinance/util/images.dart';

// ignore: must_be_immutable
class WidgetFormfield extends StatelessWidget {
  double width;
  dynamic keyboardtype;
  WidgetFormfield({Key? key, required this.width, required this.keyboardtype})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: width,
      decoration:const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(Images.inputBG), fit: BoxFit.fill),
      ),
      child: TextFormField(
          decoration:const InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(left: 8.0)),
          cursorColor:const Color.fromARGB(255, 15, 106, 180),
          keyboardType: keyboardtype),
    );
  }
}
