import 'package:flutter/material.dart';

class AlertDialogWidget extends StatelessWidget {
  const AlertDialogWidget({super.key, required title, required content});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(title: null, content: null);
            });
      },
    );
  }
}
