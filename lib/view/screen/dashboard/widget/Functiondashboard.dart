// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FuncTionDashBoard extends StatelessWidget {
  dynamic onpressed;
  dynamic icon;
  FuncTionDashBoard({
    Key? key,
    required this.icon,
    required this.onpressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: IconButton(
        onPressed: onpressed,
        icon: icon,
      ),
    );
  }
}
