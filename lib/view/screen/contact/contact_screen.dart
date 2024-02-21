import 'package:flutter/material.dart';
import 'package:microfinance/view/widget/bottomappbar.dart';

class ConTactScreen extends StatefulWidget {
  const ConTactScreen({super.key});

  @override
  State<ConTactScreen> createState() => _ConTactScreenState();
}

class _ConTactScreenState extends State<ConTactScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: WidgetBottomNav(),
    );
  }
}
