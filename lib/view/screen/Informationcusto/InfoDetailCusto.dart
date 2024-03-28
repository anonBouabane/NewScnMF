import 'package:flutter/material.dart';
import 'package:microfinance/view/widget/bottomappbar.dart';

class DetailInfoCusto extends StatefulWidget {
  const DetailInfoCusto({super.key});

  @override
  State<DetailInfoCusto> createState() => _DetailInfoCustoState();
}

class _DetailInfoCustoState extends State<DetailInfoCusto> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("detail custo"),
      ),
      bottomNavigationBar: WidgetBottomNav(),
    );
  }
}
