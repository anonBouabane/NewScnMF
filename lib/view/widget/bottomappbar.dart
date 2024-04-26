import 'package:flutter/material.dart';
import 'package:microfinance/util/colorstyle.dart';
import 'package:microfinance/util/images.dart';

class WidgetBottomNav extends StatelessWidget {
  const WidgetBottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(height: 65,
      color: Stycolors.darkblue,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Image.asset(
              Images.icon_back,
            ),
          ),
        ],
      ),
      
    );
  }
}
